import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'menu_button_model.dart';
export 'menu_button_model.dart';

class MenuButtonWidget extends StatefulWidget {
  const MenuButtonWidget({
    super.key,
    this.openDrawer,
  });

  final Future Function()? openDrawer;

  @override
  State<MenuButtonWidget> createState() => _MenuButtonWidgetState();
}

class _MenuButtonWidgetState extends State<MenuButtonWidget> {
  late MenuButtonModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuButtonModel());
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
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.openDrawer?.call();
            },
            child: Container(
              width: 75.0,
              height: 75.0,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF081F39),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10.0,
                          color: Color(0x74000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                          spreadRadius: 3.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0x4C6BAFCA),
                      ),
                    ),
                  ),
                  Container(
                    width: 65.0,
                    height: 65.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/Group_278.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 42.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                      color: Color(0xFF081F39),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 20.0,
                          color: Color(0xCC000000),
                          offset: Offset(
                            -0.0,
                            0.0,
                          ),
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_rounded,
                      color: Color(0xFFFF6F00),
                      size: 16.0,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                      child: Text(
                        'MENU',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              color: Color(0xFFFF5100),
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        } else {
          return InkWell(
            splashColor: Colors.transparent,
            focusColor: Colors.transparent,
            hoverColor: Colors.transparent,
            highlightColor: Colors.transparent,
            onTap: () async {
              await widget.openDrawer?.call();
            },
            child: Container(
              width: 75.0,
              height: 75.0,
              child: Stack(
                alignment: AlignmentDirectional(0.0, 0.0),
                children: [
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 3.0,
                          color: Color(0x74000000),
                          offset: Offset(
                            0.0,
                            0.0,
                          ),
                          spreadRadius: 1.0,
                        )
                      ],
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: Color(0x4C6BAFCA),
                      ),
                    ),
                  ),
                  Container(
                    width: 65.0,
                    height: 65.0,
                    clipBehavior: Clip.antiAlias,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                    ),
                    child: SvgPicture.asset(
                      'assets/images/Group_278.svg',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    width: 42.0,
                    height: 42.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 5.0,
                          color: Color(0x33000000),
                          offset: Offset(
                            -0.0,
                            0.0,
                          ),
                          spreadRadius: 2.0,
                        )
                      ],
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.menu_rounded,
                      color: Color(0xFFFF6F00),
                      size: 16.0,
                    ),
                  ),
                  Align(
                    alignment: AlignmentDirectional(0.0, 1.0),
                    child: Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 4.0),
                      child: Text(
                        'MENU',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Mulish',
                              color: Color(0xFFFF5100),
                              fontSize: 6.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w800,
                            ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          );
        }
      },
    );
  }
}
