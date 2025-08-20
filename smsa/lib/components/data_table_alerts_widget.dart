import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'data_table_alerts_model.dart';
export 'data_table_alerts_model.dart';

class DataTableAlertsWidget extends StatefulWidget {
  const DataTableAlertsWidget({super.key});

  @override
  State<DataTableAlertsWidget> createState() => _DataTableAlertsWidgetState();
}

class _DataTableAlertsWidgetState extends State<DataTableAlertsWidget> {
  late DataTableAlertsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DataTableAlertsModel());
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
