import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_update_inventory_widget.dart' show AddUpdateInventoryWidget;
import 'package:flutter/material.dart';

class AddUpdateInventoryModel
    extends FlutterFlowModel<AddUpdateInventoryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for inventoryOwnerDropdown widget.
  String? inventoryOwnerDropdownValue;
  FormFieldController<String>? inventoryOwnerDropdownValueController;
  // State field(s) for productDropdown widget.
  String? productDropdownValue;
  FormFieldController<String>? productDropdownValueController;
  // State field(s) for description widget.
  FocusNode? descriptionFocusNode;
  TextEditingController? descriptionTextController;
  String? Function(BuildContext, String?)? descriptionTextControllerValidator;
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
  // Stores action output result for [Backend Call - API (createInventory)] action in Button widget.
  ApiCallResponse? updatedItem;
  // Stores action output result for [Backend Call - API (createInventory)] action in Button widget.
  ApiCallResponse? createdItem;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    descriptionFocusNode?.dispose();
    descriptionTextController?.dispose();

    skuCodeFocusNode?.dispose();
    skuCodeTextController?.dispose();

    priceFocusNode?.dispose();
    priceTextController?.dispose();
  }
}
