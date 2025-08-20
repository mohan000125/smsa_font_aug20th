// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/actions/actions.dart' as action_blocks;
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom actions

Future modeSwitchSplash(
  BuildContext context,
  Color rippleColor,
) async {
  final overlay = Overlay.of(context);

  late OverlayEntry overlayEntry;

  overlayEntry = OverlayEntry(
    builder: (_) => _RippleOverlay(
      rippleColor: rippleColor,
      onComplete: () => overlayEntry.remove(),
    ),
  );

  overlay.insert(overlayEntry);
}

class _RippleOverlay extends StatefulWidget {
  final VoidCallback onComplete;
  final Color rippleColor;

  const _RippleOverlay({
    Key? key,
    required this.rippleColor,
    required this.onComplete,
  }) : super(key: key);

  @override
  State<_RippleOverlay> createState() => _RippleOverlayState();
}

class _RippleOverlayState extends State<_RippleOverlay>
    with TickerProviderStateMixin {
  late AnimationController _rippleController;
  late AnimationController _textController;
  late AnimationController _fadeOutController;

  late Animation<double> _rippleRadius;
  late Animation<double> _textOpacity;
  late Animation<double> _overlayOpacity;

  String _modeLabel = '';

  @override
  void initState() {
    super.initState();

    // Use Theme.of(context) in post-frame to ensure context is available
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final brightness = Theme.of(context).brightness;
      setState(() {
        _modeLabel = brightness == Brightness.dark ? 'Light Mode' : 'Dark Mode';
      });
    });

    _rippleController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 600),
    );

    _textController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 300),
    );

    _fadeOutController = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 400),
    );

    _rippleRadius = Tween<double>(begin: 0, end: 2000).animate(
      CurvedAnimation(parent: _rippleController, curve: Curves.easeOut),
    );

    _textOpacity = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(parent: _textController, curve: Curves.easeIn),
    );

    _overlayOpacity = Tween<double>(begin: 1, end: 0).animate(
      CurvedAnimation(parent: _fadeOutController, curve: Curves.easeOut),
    );

    _startRipple();
  }

  Future<void> _startRipple() async {
    await _rippleController.forward();
    await _textController.forward();
    await Future.delayed(Duration(milliseconds: 800));
    await _textController.reverse();
    await _fadeOutController.forward();
    widget.onComplete();
  }

  @override
  void dispose() {
    _rippleController.dispose();
    _textController.dispose();
    _fadeOutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final center = Offset(size.width, 0); // Top-right

    return Positioned.fill(
      child: AnimatedBuilder(
        animation: Listenable.merge([
          _rippleRadius,
          _textOpacity,
          _overlayOpacity,
        ]),
        builder: (context, _) {
          return Opacity(
            opacity: _overlayOpacity.value,
            child: Stack(
              children: [
                CustomPaint(
                  painter: _RipplePainter(
                    center: center,
                    radius: _rippleRadius.value,
                    color: widget.rippleColor,
                  ),
                  child: Container(),
                ),
                Center(
                  child: Opacity(
                    opacity: _textOpacity.value,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          _modeLabel,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.w700,
                            fontSize: 60,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          ),
                        ),
                        SizedBox(height: 8),
                        // Text(
                        //   'Mode ON',
                        //   style: TextStyle(
                        //     fontFamily: 'Montserrat',
                        //     fontWeight: FontWeight.w300,
                        //     fontSize: 45,
                        //     color: Colors.white,
                        //     decoration: TextDecoration.none,
                        //   ),
                        // ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class _RipplePainter extends CustomPainter {
  final Offset center;
  final double radius;
  final Color color;

  _RipplePainter({
    required this.center,
    required this.radius,
    required this.color,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()..color = color;
    canvas.drawCircle(center, radius, paint);
  }

  @override
  bool shouldRepaint(_RipplePainter oldDelegate) =>
      oldDelegate.radius != radius || oldDelegate.color != color;
}
