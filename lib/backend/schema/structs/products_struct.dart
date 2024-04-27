// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProductsStruct extends FFFirebaseStruct {
  ProductsStruct({
    String? name,
    String? description,
    String? category,
    double? price,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _name = name,
        _description = description,
        _category = category,
        _price = price,
        super(firestoreUtilData);

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  set name(String? val) => _name = val;
  bool hasName() => _name != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  set description(String? val) => _description = val;
  bool hasDescription() => _description != null;

  // "category" field.
  String? _category;
  String get category => _category ?? '';
  set category(String? val) => _category = val;
  bool hasCategory() => _category != null;

  // "price" field.
  double? _price;
  double get price => _price ?? 0.0;
  set price(double? val) => _price = val;
  void incrementPrice(double amount) => _price = price + amount;
  bool hasPrice() => _price != null;

  static ProductsStruct fromMap(Map<String, dynamic> data) => ProductsStruct(
        name: data['name'] as String?,
        description: data['description'] as String?,
        category: data['category'] as String?,
        price: castToType<double>(data['price']),
      );

  static ProductsStruct? maybeFromMap(dynamic data) =>
      data is Map ? ProductsStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'name': _name,
        'description': _description,
        'category': _category,
        'price': _price,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'name': serializeParam(
          _name,
          ParamType.String,
        ),
        'description': serializeParam(
          _description,
          ParamType.String,
        ),
        'category': serializeParam(
          _category,
          ParamType.String,
        ),
        'price': serializeParam(
          _price,
          ParamType.double,
        ),
      }.withoutNulls;

  static ProductsStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProductsStruct(
        name: deserializeParam(
          data['name'],
          ParamType.String,
          false,
        ),
        description: deserializeParam(
          data['description'],
          ParamType.String,
          false,
        ),
        category: deserializeParam(
          data['category'],
          ParamType.String,
          false,
        ),
        price: deserializeParam(
          data['price'],
          ParamType.double,
          false,
        ),
      );

  @override
  String toString() => 'ProductsStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProductsStruct &&
        name == other.name &&
        description == other.description &&
        category == other.category &&
        price == other.price;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([name, description, category, price]);
}

ProductsStruct createProductsStruct({
  String? name,
  String? description,
  String? category,
  double? price,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProductsStruct(
      name: name,
      description: description,
      category: category,
      price: price,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProductsStruct? updateProductsStruct(
  ProductsStruct? products, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    products
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProductsStructData(
  Map<String, dynamic> firestoreData,
  ProductsStruct? products,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (products == null) {
    return;
  }
  if (products.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && products.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final productsData = getProductsFirestoreData(products, forFieldValue);
  final nestedData = productsData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = products.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProductsFirestoreData(
  ProductsStruct? products, [
  bool forFieldValue = false,
]) {
  if (products == null) {
    return {};
  }
  final firestoreData = mapToFirestore(products.toMap());

  // Add any Firestore field values
  products.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProductsListFirestoreData(
  List<ProductsStruct>? productss,
) =>
    productss?.map((e) => getProductsFirestoreData(e, true)).toList() ?? [];
