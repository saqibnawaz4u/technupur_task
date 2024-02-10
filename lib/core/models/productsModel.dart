import 'dart:convert';

class ProductsModel {
  int id;
  String name;
  List<SubCategory> subCategory;

  ProductsModel({
    required this.id,
    required this.name,
    required this.subCategory,
  });

  factory ProductsModel.fromRawJson(String str) => ProductsModel.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory ProductsModel.fromJson(Map<String, dynamic> json) => ProductsModel(
    id: json["id"],
    name: json["name"],
    subCategory: List<SubCategory>.from(json["subCategory"].map((x) => SubCategory.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "subCategory": List<dynamic>.from(subCategory.map((x) => x.toJson())),
  };
}

class SubCategory {
  int id;
  SubCategoryName name;
  String image;
  List<Product> products;

  SubCategory({
    required this.id,
    required this.name,
    required this.image,
    required this.products,
  });

  factory SubCategory.fromRawJson(String str) => SubCategory.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory SubCategory.fromJson(Map<String, dynamic> json) => SubCategory(
    id: json["id"],
    name: subCategoryNameValues.map[json["name"]]!,
    image: json["image"],
    products: List<Product>.from(json["products"].map((x) => Product.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": subCategoryNameValues.reverse[name],
    "image": image,
    "products": List<dynamic>.from(products.map((x) => x.toJson())),
  };
}

enum SubCategoryName {
  BAGS,
  HAT,
  POCHETTE,
  SHOES,
  WATCH
}

final subCategoryNameValues = EnumValues({
  "Bags": SubCategoryName.BAGS,
  "Hat": SubCategoryName.HAT,
  "Pochette": SubCategoryName.POCHETTE,
  "Shoes": SubCategoryName.SHOES,
  "Watch": SubCategoryName.WATCH
});

class Product {
  int id;
  ProductName name;
  String image;
  int price;
  int quantity;
  double discountPercentage;
  bool status;

  Product({
    required this.id,
    required this.name,
    required this.image,
    required this.price,
    required this.quantity,
    required this.discountPercentage,
    required this.status,
  });

  factory Product.fromRawJson(String str) => Product.fromJson(json.decode(str));

  String toRawJson() => json.encode(toJson());

  factory Product.fromJson(Map<String, dynamic> json) => Product(
    id: json["id"],
    name: productNameValues.map[json["name"]]!,
    image: json["image"],
    price: json["price"],
    quantity: json["quantity"],
    discountPercentage: json["discountPercentage"]?.toDouble(),
    status: json["status"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": productNameValues.reverse[name],
    "image": image,
    "price": price,
    "quantity": quantity,
    "discountPercentage": discountPercentage,
    "status": status,
  };
}

enum ProductName {
  CAP,
  HOODIE,
  JACKET,
  PANTS
}

final productNameValues = EnumValues({
  "Cap": ProductName.CAP,
  "Hoodie": ProductName.HOODIE,
  "Jacket": ProductName.JACKET,
  "Pants": ProductName.PANTS
});

class EnumValues<T> {
  Map<String, T> map;
  late Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    reverseMap = map.map((k, v) => MapEntry(v, k));
    return reverseMap;
  }
}
