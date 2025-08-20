import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'drawer_buttons_model.dart';
export 'drawer_buttons_model.dart';

class DrawerButtonsWidget extends StatefulWidget {
  const DrawerButtonsWidget({
    super.key,
    this.title,
    this.iconIndex,
    bool? showDropdownArrow,
    this.icon,
  }) : this.showDropdownArrow = showDropdownArrow ?? false;

  final String? title;
  final int? iconIndex;
  final bool showDropdownArrow;
  final Widget? icon;

  @override
  State<DrawerButtonsWidget> createState() => _DrawerButtonsWidgetState();
}

class _DrawerButtonsWidgetState extends State<DrawerButtonsWidget> {
  late DrawerButtonsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DrawerButtonsModel());
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Container(
        width: double.infinity,
        height: 50.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(8.0),
          shape: BoxShape.rectangle,
        ),
        child: Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 15.0, 0.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Builder(
                    builder: (context) {
                      if (widget!.iconIndex == 1) {
                        return Icon(
                          Icons.space_dashboard_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 18.0,
                        );
                      } else if (widget!.iconIndex == 2) {
                        return Icon(
                          Icons.search_sharp,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 18.0,
                        );
                      } else if (widget!.iconIndex == 3) {
                        return Icon(
                          Icons.crisis_alert_outlined,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 18.0,
                        );
                      } else {
                        return Icon(
                          Icons.person_outline_rounded,
                          color: FlutterFlowTheme.of(context).secondaryText,
                          size: 18.0,
                        );
                      }
                    },
                  ),
                  Text(
                    valueOrDefault<String>(
                      widget!.title,
                      'Dashboard',
                    ),
                    style: FlutterFlowTheme.of(context).labelMedium.override(
                          fontFamily: 'Mulish',
                          color: FlutterFlowTheme.of(context).secondaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(SizedBox(width: 10.0)),
              ),
              if (widget!.showDropdownArrow)
                Icon(
                  Icons.keyboard_arrow_down_rounded,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 22.0,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
