import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'earth_right_model.dart';
export 'earth_right_model.dart';

class EarthRightWidget extends StatefulWidget {
  const EarthRightWidget({super.key});

  @override
  State<EarthRightWidget> createState() => _EarthRightWidgetState();
}

class _EarthRightWidgetState extends State<EarthRightWidget> {
  late EarthRightModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EarthRightModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Builder(
      builder: (context) {
        if (Theme.of(context).brightness == Brightness.dark) {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 40.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: Image.asset(
                'assets/images/Earth_Left.png',
                width: 200.0,
                fit: BoxFit.cover,
              ),
            ),
          );
        } else {
          return Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 25.0),
            child: Image.asset(
              'assets/images/Earth_light_Right_(1).png',
              height: 430.0,
              fit: BoxFit.fitHeight,
            ),
          );
        }
      },
    );
  }
}
