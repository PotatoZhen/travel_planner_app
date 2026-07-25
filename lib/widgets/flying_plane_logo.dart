import 'package:flutter/material.dart';
//import '../theme/app_theme.dart';

/// Logo widget: a plane flies in from the left, banks slightly, and
/// settles ("stops") centered inside the circular badge. Plays once
/// on mount.
class FlyingPlaneLogo extends StatefulWidget {
  final double size;
  const FlyingPlaneLogo({super.key, this.size = 140});

  @override
  State<FlyingPlaneLogo> createState() => _FlyingPlaneLogoState();
}

class _FlyingPlaneLogoState extends State<FlyingPlaneLogo>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _flyIn; // 0 = off-screen, 1 = docked at center
  late final Animation<double> _tilt; // banking angle in radians
  late final Animation<double> _fade;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1400),
    );

    // Overshoots slightly then settles — reads as "flies in and stops".
    _flyIn = CurvedAnimation(parent: _controller, curve: Curves.easeOutBack);

    // Material's "flight" glyph points diagonally (~45°) by default, so the
    // base rotation below levels it out to point straight right at rest.
    _tilt = TweenSequence<double>([
      TweenSequenceItem(tween: Tween(begin: 0.15, end: 0.15), weight: 15),
      TweenSequenceItem(
        tween: Tween(begin: 0.15, end: 0.0).chain(CurveTween(curve: Curves.easeOut)),
        weight: 55,
      ),
      TweenSequenceItem(tween: Tween(begin: 0.0, end: 0.0), weight: 30),
    ]).animate(_controller);

    _fade = CurvedAnimation(
      parent: _controller,
      curve: const Interval(0.0, 0.25, curve: Curves.easeIn),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final badge = widget.size;
    final iconSize = badge * 0.46;

    return SizedBox(
      width: badge,
      height: badge,
      child: ClipOval(
        child: Container(
          //color: AppColors.green.withValues(alpha: 0.15),
          child: AnimatedBuilder(
            animation: _controller,
            builder: (context, child) {
              // Travel distance: starts well to the left of the badge, ends centered.
              final dx = (1 - _flyIn.value) * (badge * 1.6 + iconSize);

              return Opacity(
                opacity: _fade.value,
                child: Transform.translate(
                  offset: Offset(-dx, 0),
                  child: Transform.rotate(
                    // -45° base so the glyph reads as level flight once _tilt hits 0.
                    angle: -0.785398 + _tilt.value,
                    child: child,
                  ),
                ),
              );
            },
            child: Icon(
              Icons.flight_rounded,
              size: iconSize,
              //color: AppColors.brown,
              textDirection: TextDirection.ltr,
            ),
          ),
        ),
      ),
    );
  }
}