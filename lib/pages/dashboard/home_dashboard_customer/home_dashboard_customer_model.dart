import '/flutter_flow/flutter_flow_util.dart';
import 'home_dashboard_customer_widget.dart' show HomeDashboardCustomerWidget;
import 'package:flutter/material.dart';

class HomeDashboardCustomerModel
    extends FlutterFlowModel<HomeDashboardCustomerWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
