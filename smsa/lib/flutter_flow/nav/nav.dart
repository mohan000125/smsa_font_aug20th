import 'dart:async';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:page_transition/page_transition.dart';
import 'package:provider/provider.dart';

import '/backend/schema/structs/index.dart';

import '/main.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/lat_lng.dart';
import '/flutter_flow/place.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'serialization_util.dart';

import '/index.dart';

export 'package:go_router/go_router.dart';
export 'serialization_util.dart';

const kTransitionInfoKey = '__transition_info__';

GlobalKey<NavigatorState> appNavigatorKey = GlobalKey<NavigatorState>();

class AppStateNotifier extends ChangeNotifier {
  AppStateNotifier._();

  static AppStateNotifier? _instance;
  static AppStateNotifier get instance => _instance ??= AppStateNotifier._();

  bool showSplashImage = true;

  void stopShowingSplashImage() {
    showSplashImage = false;
    notifyListeners();
  }
}

GoRouter createRouter(AppStateNotifier appStateNotifier) => GoRouter(
      initialLocation: '/',
      debugLogDiagnostics: true,
      refreshListenable: appStateNotifier,
      navigatorKey: appNavigatorKey,
      errorBuilder: (context, state) => LoginPageWidget(),
      routes: [
        FFRoute(
          name: '_initialize',
          path: '/',
          builder: (context, _) => LoginPageWidget(),
        ),
        FFRoute(
          name: DashBoardWidget.routeName,
          path: DashBoardWidget.routePath,
          builder: (context, params) => DashBoardWidget(),
        ),
        FFRoute(
          name: TestWidget.routeName,
          path: TestWidget.routePath,
          builder: (context, params) => TestWidget(),
        ),
        FFRoute(
          name: LoginPageOldWidget.routeName,
          path: LoginPageOldWidget.routePath,
          builder: (context, params) => LoginPageOldWidget(),
        ),
        FFRoute(
          name: GeneralSearchWidget.routeName,
          path: GeneralSearchWidget.routePath,
          builder: (context, params) => GeneralSearchWidget(),
        ),
        FFRoute(
          name: AddEditRecipientWidget.routeName,
          path: AddEditRecipientWidget.routePath,
          builder: (context, params) => AddEditRecipientWidget(
            empId: params.getParam(
              'empId',
              ParamType.String,
            ),
            ramId: params.getParam(
              'ramId',
              ParamType.int,
            ),
            emaiId: params.getParam(
              'emaiId',
              ParamType.String,
            ),
            empName: params.getParam(
              'empName',
              ParamType.String,
            ),
            geoName: params.getParam(
              'geoName',
              ParamType.String,
            ),
            senderBIC: params.getParam(
              'senderBIC',
              ParamType.String,
            ),
            msgType: params.getParam(
              'msgType',
              ParamType.String,
            ),
            smsaGrade: params.getParam(
              'smsaGrade',
              ParamType.String,
            ),
            createdBy: params.getParam(
              'createdBy',
              ParamType.String,
            ),
            createdDate: params.getParam(
              'createdDate',
              ParamType.String,
            ),
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            ccMailId: params.getParam(
              'ccMailId',
              ParamType.String,
            ),
            ccEmpId: params.getParam(
              'ccEmpId',
              ParamType.String,
            ),
            verifiedBy: params.getParam(
              'verifiedBy',
              ParamType.String,
            ),
            verfiedDate: params.getParam(
              'verfiedDate',
              ParamType.String,
            ),
            smsaRecOperation: params.getParam(
              'smsaRecOperation',
              ParamType.String,
            ),
            changeText: params.getParam(
              'changeText',
              ParamType.bool,
            ),
            edited: params.getParam(
              'edited',
              ParamType.bool,
            ),
            deleted: params.getParam(
              'deleted',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ApproveRejectRecipientWidget.routeName,
          path: ApproveRejectRecipientWidget.routePath,
          builder: (context, params) => ApproveRejectRecipientWidget(),
        ),
        FFRoute(
          name: ApproveRejectThresholdWidget.routeName,
          path: ApproveRejectThresholdWidget.routePath,
          builder: (context, params) => ApproveRejectThresholdWidget(),
        ),
        FFRoute(
          name: AddEditThresholdWidget.routeName,
          path: AddEditThresholdWidget.routePath,
          builder: (context, params) => AddEditThresholdWidget(
            currency: params.getParam(
              'currency',
              ParamType.String,
            ),
            senderBic: params.getParam(
              'senderBic',
              ParamType.String,
            ),
            mtType: params.getParam(
              'mtType',
              ParamType.String,
            ),
            thresholdId: params.getParam(
              'thresholdId',
              ParamType.int,
            ),
            recName: params.getParam(
              'recName',
              ParamType.String,
            ),
            recMail: params.getParam(
              'recMail',
              ParamType.String,
            ),
            catAFrom: params.getParam(
              'catAFrom',
              ParamType.int,
            ),
            catATo: params.getParam(
              'catATo',
              ParamType.int,
            ),
            catBFrom: params.getParam(
              'catBFrom',
              ParamType.int,
            ),
            catBTo: params.getParam(
              'catBTo',
              ParamType.int,
            ),
            changeText: params.getParam(
              'changeText',
              ParamType.bool,
            ),
            action: params.getParam(
              'action',
              ParamType.String,
            ),
            createdBy: params.getParam(
              'createdBy',
              ParamType.String,
            ),
            createdDate: params.getParam(
              'createdDate',
              ParamType.String,
            ),
            verifiedBy: params.getParam(
              'verifiedBy',
              ParamType.String,
            ),
            verifiedDate: params.getParam(
              'verifiedDate',
              ParamType.String,
            ),
            edit: params.getParam(
              'edit',
              ParamType.bool,
            ),
            delete: params.getParam(
              'delete',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: AddEditRecipientNewWidget.routeName,
          path: AddEditRecipientNewWidget.routePath,
          builder: (context, params) => AddEditRecipientNewWidget(
            empId: params.getParam(
              'empId',
              ParamType.String,
            ),
            ramId: params.getParam(
              'ramId',
              ParamType.String,
            ),
            emaiId: params.getParam(
              'emaiId',
              ParamType.String,
            ),
            empName: params.getParam(
              'empName',
              ParamType.String,
            ),
            geoName: params.getParam(
              'geoName',
              ParamType.String,
            ),
            senderBIC: params.getParam(
              'senderBIC',
              ParamType.String,
            ),
            msgType: params.getParam(
              'msgType',
              ParamType.String,
            ),
            smsaGrade: params.getParam(
              'smsaGrade',
              ParamType.String,
            ),
            createdBy: params.getParam(
              'createdBy',
              ParamType.String,
            ),
            createdDate: params.getParam(
              'createdDate',
              ParamType.String,
            ),
            category: params.getParam(
              'category',
              ParamType.String,
            ),
            ccMailId: params.getParam(
              'ccMailId',
              ParamType.String,
            ),
            ccEmpId: params.getParam(
              'ccEmpId',
              ParamType.String,
            ),
            verifiedBy: params.getParam(
              'verifiedBy',
              ParamType.String,
            ),
            verfiedDate: params.getParam(
              'verfiedDate',
              ParamType.String,
            ),
            smsaRecOperation: params.getParam(
              'smsaRecOperation',
              ParamType.String,
            ),
            changeText: params.getParam(
              'changeText',
              ParamType.bool,
            ),
          ),
        ),
        FFRoute(
          name: ListRecipientWidget.routeName,
          path: ListRecipientWidget.routePath,
          builder: (context, params) => ListRecipientWidget(),
        ),
        FFRoute(
          name: ListThresholdWidget.routeName,
          path: ListThresholdWidget.routePath,
          builder: (context, params) => ListThresholdWidget(),
        ),
        FFRoute(
          name: AddEditClientWidget.routeName,
          path: AddEditClientWidget.routePath,
          builder: (context, params) => AddEditClientWidget(
            changeText: params.getParam(
              'changeText',
              ParamType.bool,
            ),
            edited: params.getParam(
              'edited',
              ParamType.bool,
            ),
            deleted: params.getParam(
              'deleted',
              ParamType.bool,
            ),
            mtType: params.getParam(
              'mtType',
              ParamType.String,
            ),
            fieldname: params.getParam(
              'fieldname',
              ParamType.String,
            ),
            fieldVlaue: params.getParam(
              'fieldVlaue',
              ParamType.String,
            ),
            trigger: params.getParam(
              'trigger',
              ParamType.String,
            ),
            accNo: params.getParam(
              'accNo',
              ParamType.String,
            ),
            custID: params.getParam(
              'custID',
              ParamType.String,
            ),
            nameIdentifier: params.getParam(
              'nameIdentifier',
              ParamType.String,
            ),
            mailID: params.getParam(
              'mailID',
              ParamType.String,
            ),
            requestID: params.getParam(
              'requestID',
              ParamType.String,
            ),
            createdBy: params.getParam(
              'createdBy',
              ParamType.String,
            ),
          ),
        ),
        FFRoute(
          name: ListClientWidget.routeName,
          path: ListClientWidget.routePath,
          builder: (context, params) => ListClientWidget(),
        ),
        FFRoute(
          name: ApproveRejectClientWidget.routeName,
          path: ApproveRejectClientWidget.routePath,
          builder: (context, params) => ApproveRejectClientWidget(),
        ),
        FFRoute(
          name: EarthglobeParasWidget.routeName,
          path: EarthglobeParasWidget.routePath,
          builder: (context, params) => EarthglobeParasWidget(),
        ),
        FFRoute(
          name: LoginPageWidget.routeName,
          path: LoginPageWidget.routePath,
          builder: (context, params) => LoginPageWidget(),
        ),
        FFRoute(
          name: GeneralSearchParasWidget.routeName,
          path: GeneralSearchParasWidget.routePath,
          builder: (context, params) => GeneralSearchParasWidget(),
        )
      ].map((r) => r.toRoute(appStateNotifier)).toList(),
    );

extension NavParamExtensions on Map<String, String?> {
  Map<String, String> get withoutNulls => Map.fromEntries(
        entries
            .where((e) => e.value != null)
            .map((e) => MapEntry(e.key, e.value!)),
      );
}

extension NavigationExtensions on BuildContext {
  void safePop() {
    // If there is only one route on the stack, navigate to the initial
    // page instead of popping.
    if (canPop()) {
      pop();
    } else {
      go('/');
    }
  }
}

extension _GoRouterStateExtensions on GoRouterState {
  Map<String, dynamic> get extraMap =>
      extra != null ? extra as Map<String, dynamic> : {};
  Map<String, dynamic> get allParams => <String, dynamic>{}
    ..addAll(pathParameters)
    ..addAll(uri.queryParameters)
    ..addAll(extraMap);
  TransitionInfo get transitionInfo => extraMap.containsKey(kTransitionInfoKey)
      ? extraMap[kTransitionInfoKey] as TransitionInfo
      : TransitionInfo.appDefault();
}

class FFParameters {
  FFParameters(this.state, [this.asyncParams = const {}]);

  final GoRouterState state;
  final Map<String, Future<dynamic> Function(String)> asyncParams;

  Map<String, dynamic> futureParamValues = {};

  // Parameters are empty if the params map is empty or if the only parameter
  // present is the special extra parameter reserved for the transition info.
  bool get isEmpty =>
      state.allParams.isEmpty ||
      (state.allParams.length == 1 &&
          state.extraMap.containsKey(kTransitionInfoKey));
  bool isAsyncParam(MapEntry<String, dynamic> param) =>
      asyncParams.containsKey(param.key) && param.value is String;
  bool get hasFutures => state.allParams.entries.any(isAsyncParam);
  Future<bool> completeFutures() => Future.wait(
        state.allParams.entries.where(isAsyncParam).map(
          (param) async {
            final doc = await asyncParams[param.key]!(param.value)
                .onError((_, __) => null);
            if (doc != null) {
              futureParamValues[param.key] = doc;
              return true;
            }
            return false;
          },
        ),
      ).onError((_, __) => [false]).then((v) => v.every((e) => e));

  dynamic getParam<T>(
    String paramName,
    ParamType type, {
    bool isList = false,
    StructBuilder<T>? structBuilder,
  }) {
    if (futureParamValues.containsKey(paramName)) {
      return futureParamValues[paramName];
    }
    if (!state.allParams.containsKey(paramName)) {
      return null;
    }
    final param = state.allParams[paramName];
    // Got parameter from `extras`, so just directly return it.
    if (param is! String) {
      return param;
    }
    // Return serialized value.
    return deserializeParam<T>(
      param,
      type,
      isList,
      structBuilder: structBuilder,
    );
  }
}

class FFRoute {
  const FFRoute({
    required this.name,
    required this.path,
    required this.builder,
    this.requireAuth = false,
    this.asyncParams = const {},
    this.routes = const [],
  });

  final String name;
  final String path;
  final bool requireAuth;
  final Map<String, Future<dynamic> Function(String)> asyncParams;
  final Widget Function(BuildContext, FFParameters) builder;
  final List<GoRoute> routes;

  GoRoute toRoute(AppStateNotifier appStateNotifier) => GoRoute(
        name: name,
        path: path,
        pageBuilder: (context, state) {
          fixStatusBarOniOS16AndBelow(context);
          final ffParams = FFParameters(state, asyncParams);
          final page = ffParams.hasFutures
              ? FutureBuilder(
                  future: ffParams.completeFutures(),
                  builder: (context, _) => builder(context, ffParams),
                )
              : builder(context, ffParams);
          final child = page;

          final transitionInfo = state.transitionInfo;
          return transitionInfo.hasTransition
              ? CustomTransitionPage(
                  key: state.pageKey,
                  child: child,
                  transitionDuration: transitionInfo.duration,
                  transitionsBuilder:
                      (context, animation, secondaryAnimation, child) =>
                          PageTransition(
                    type: transitionInfo.transitionType,
                    duration: transitionInfo.duration,
                    reverseDuration: transitionInfo.duration,
                    alignment: transitionInfo.alignment,
                    child: child,
                  ).buildTransitions(
                    context,
                    animation,
                    secondaryAnimation,
                    child,
                  ),
                )
              : MaterialPage(key: state.pageKey, child: child);
        },
        routes: routes,
      );
}

class TransitionInfo {
  const TransitionInfo({
    required this.hasTransition,
    this.transitionType = PageTransitionType.fade,
    this.duration = const Duration(milliseconds: 300),
    this.alignment,
  });

  final bool hasTransition;
  final PageTransitionType transitionType;
  final Duration duration;
  final Alignment? alignment;

  static TransitionInfo appDefault() => TransitionInfo(hasTransition: false);
}

class RootPageContext {
  const RootPageContext(this.isRootPage, [this.errorRoute]);
  final bool isRootPage;
  final String? errorRoute;

  static bool isInactiveRootPage(BuildContext context) {
    final rootPageContext = context.read<RootPageContext?>();
    final isRootPage = rootPageContext?.isRootPage ?? false;
    final location = GoRouterState.of(context).uri.toString();
    return isRootPage &&
        location != '/' &&
        location != rootPageContext?.errorRoute;
  }

  static Widget wrap(Widget child, {String? errorRoute}) => Provider.value(
        value: RootPageContext(true, errorRoute),
        child: child,
      );
}

extension GoRouterLocationExtension on GoRouter {
  String getCurrentLocation() {
    final RouteMatch lastMatch = routerDelegate.currentConfiguration.last;
    final RouteMatchList matchList = lastMatch is ImperativeRouteMatch
        ? lastMatch.matches
        : routerDelegate.currentConfiguration;
    return matchList.uri.toString();
  }
}
