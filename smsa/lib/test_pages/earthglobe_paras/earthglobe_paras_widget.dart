import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'earthglobe_paras_model.dart';
export 'earthglobe_paras_model.dart';

class EarthglobeParasWidget extends StatefulWidget {
  const EarthglobeParasWidget({super.key});

  static String routeName = 'earthglobeParas';
  static String routePath = '/earthglobeParas';

  @override
  State<EarthglobeParasWidget> createState() => _EarthglobeParasWidgetState();
}

class _EarthglobeParasWidgetState extends State<EarthglobeParasWidget> {
  late EarthglobeParasModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EarthglobeParasModel());
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: custom_widgets.EarthGlobeParas(
              width: double.infinity,
              height: double.infinity,
            ),
          ),
        ),
      ),
    );
  }
}
