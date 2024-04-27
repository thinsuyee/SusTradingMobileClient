import '/flutter_flow/flutter_flow_util.dart';
import 'home_dashboard_admin_widget.dart' show HomeDashboardAdminWidget;
import 'package:flutter/material.dart';

class HomeDashboardAdminModel
    extends FlutterFlowModel<HomeDashboardAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
