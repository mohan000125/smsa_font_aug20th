import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'a_igencom_model.dart';
export 'a_igencom_model.dart';

/// Recipient Management Form
class AIgencomWidget extends StatefulWidget {
  const AIgencomWidget({super.key});

  @override
  State<AIgencomWidget> createState() => _AIgencomWidgetState();
}

class _AIgencomWidgetState extends State<AIgencomWidget> {
  late AIgencomModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AIgencomModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
