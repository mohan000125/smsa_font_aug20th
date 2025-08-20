import '/components/drawer_buttons_widget.dart';
import '/components/sidebar_texts_click_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:math';
import 'dart:ui';
import '/index.dart';
import 'drawer_widget.dart' show DrawerWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';

class DrawerModel extends FlutterFlowModel<DrawerWidget> {
  ///  Local state fields for this component.

  bool highValues = false;

  bool clients = false;

  ///  State fields for stateful widgets in this component.

  // Model for Dasboard.
  late DrawerButtonsModel dasboardModel;
  // Model for Search.
  late DrawerButtonsModel searchModel;
  // Model for HV_Alerts.
  late DrawerButtonsModel hVAlertsModel1;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel1;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel2;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel3;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel4;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel5;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel6;
  // Model for HV_Alerts.
  late DrawerButtonsModel hVAlertsModel2;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel7;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel8;
  // Model for Sidebar_Texts_Click component.
  late SidebarTextsClickModel sidebarTextsClickModel9;

  @override
  void initState(BuildContext context) {
    dasboardModel = createModel(context, () => DrawerButtonsModel());
    searchModel = createModel(context, () => DrawerButtonsModel());
    hVAlertsModel1 = createModel(context, () => DrawerButtonsModel());
    sidebarTextsClickModel1 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel2 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel3 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel4 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel5 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel6 =
        createModel(context, () => SidebarTextsClickModel());
    hVAlertsModel2 = createModel(context, () => DrawerButtonsModel());
    sidebarTextsClickModel7 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel8 =
        createModel(context, () => SidebarTextsClickModel());
    sidebarTextsClickModel9 =
        createModel(context, () => SidebarTextsClickModel());
  }

  @override
  void dispose() {
    dasboardModel.dispose();
    searchModel.dispose();
    hVAlertsModel1.dispose();
    sidebarTextsClickModel1.dispose();
    sidebarTextsClickModel2.dispose();
    sidebarTextsClickModel3.dispose();
    sidebarTextsClickModel4.dispose();
    sidebarTextsClickModel5.dispose();
    sidebarTextsClickModel6.dispose();
    hVAlertsModel2.dispose();
    sidebarTextsClickModel7.dispose();
    sidebarTextsClickModel8.dispose();
    sidebarTextsClickModel9.dispose();
  }
}
