import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'place_order_widget.dart' show PlaceOrderWidget;
import 'package:flutter/material.dart';

class PlaceOrderModel extends FlutterFlowModel<PlaceOrderWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for productDropdown widget.
  String? productDropdownValue;
  FormFieldController<String>? productDropdownValueController;
  // State field(s) for skuCode widget.
  FocusNode? skuCodeFocusNode;
  TextEditingController? skuCodeTextController;
  String? Function(BuildContext, String?)? skuCodeTextControllerValidator;
  // State field(s) for price widget.
  FocusNode? priceFocusNode;
  TextEditingController? priceTextController;
  String? Function(BuildContext, String?)? priceTextControllerValidator;
  // State field(s) for CountController widget.
  int? countControllerValue;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    skuCodeFocusNode?.dispose();
    skuCodeTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
