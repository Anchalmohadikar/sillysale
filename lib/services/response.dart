class Silly {
  Silly({
    this.items,
    this.searchCriteria,
    this.totalCount,
  });

  List<Item> items;
  SearchCriteria searchCriteria;
  int totalCount;

  Silly copyWith({
    List<Item> items,
    SearchCriteria searchCriteria,
    int totalCount,
  }) =>
      Silly(
        items: items ?? this.items,
        searchCriteria: searchCriteria ?? this.searchCriteria,
        totalCount: totalCount ?? this.totalCount,
      );

  factory Silly.fromJson(Map<String, dynamic> json) => Silly(
        items: List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
        searchCriteria: SearchCriteria.fromJson(json["search_criteria"]),
        totalCount: json["total_count"],
      );

  Map<String, dynamic> toJson() => {
        "items": List<dynamic>.from(items.map((x) => x.toJson())),
        "search_criteria": searchCriteria.toJson(),
        "total_count": totalCount,
      };
}

class Item {
  Item({
    this.id,
    this.sku,
    this.name,
    this.attributeSetId,
    this.price,
    this.status,
    this.visibility,
    this.typeId,
    this.createdAt,
    this.updatedAt,
    this.weight,
    this.extensionAttributes,
    this.productLinks,
    this.options,
    this.mediaGalleryEntries,
    this.tierPrices,
    this.customAttributes,
  });

  int id;
  String sku;
  String name;
  int attributeSetId;
  int price;
  int status;
  int visibility;
  TypeId typeId;
  DateTime createdAt;
  DateTime updatedAt;
  double weight;
  ExtensionAttributes extensionAttributes;
  List<dynamic> productLinks;
  List<dynamic> options;
  List<MediaGalleryEntry> mediaGalleryEntries;
  List<dynamic> tierPrices;
  List<CustomAttribute> customAttributes;

  Item copyWith({
    int id,
    String sku,
    String name,
    int attributeSetId,
    int price,
    int status,
    int visibility,
    TypeId typeId,
    DateTime createdAt,
    DateTime updatedAt,
    double weight,
    ExtensionAttributes extensionAttributes,
    List<dynamic> productLinks,
    List<dynamic> options,
    List<MediaGalleryEntry> mediaGalleryEntries,
    List<dynamic> tierPrices,
    List<CustomAttribute> customAttributes,
  }) =>
      Item(
        id: id ?? this.id,
        sku: sku ?? this.sku,
        name: name ?? this.name,
        attributeSetId: attributeSetId ?? this.attributeSetId,
        price: price ?? this.price,
        status: status ?? this.status,
        visibility: visibility ?? this.visibility,
        typeId: typeId ?? this.typeId,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt ?? this.updatedAt,
        weight: weight ?? this.weight,
        extensionAttributes: extensionAttributes ?? this.extensionAttributes,
        productLinks: productLinks ?? this.productLinks,
        options: options ?? this.options,
        mediaGalleryEntries: mediaGalleryEntries ?? this.mediaGalleryEntries,
        tierPrices: tierPrices ?? this.tierPrices,
        customAttributes: customAttributes ?? this.customAttributes,
      );

  factory Item.fromJson(Map<String, dynamic> json) => Item(
        id: json["id"],
        sku: json["sku"],
        name: json["name"],
        attributeSetId: json["attribute_set_id"],
        price: json["price"],
        status: json["status"],
        visibility: json["visibility"],
        typeId: typeIdValues.map[json["type_id"]],
        createdAt: DateTime.parse(json["created_at"]),
        updatedAt: DateTime.parse(json["updated_at"]),
        weight: json["weight"].toDouble(),
        extensionAttributes:
            ExtensionAttributes.fromJson(json["extension_attributes"]),
        productLinks: List<dynamic>.from(json["product_links"].map((x) => x)),
        options: List<dynamic>.from(json["options"].map((x) => x)),
        mediaGalleryEntries: List<MediaGalleryEntry>.from(
            json["media_gallery_entries"]
                .map((x) => MediaGalleryEntry.fromJson(x))),
        tierPrices: List<dynamic>.from(json["tier_prices"].map((x) => x)),
        customAttributes: List<CustomAttribute>.from(
            json["custom_attributes"].map((x) => CustomAttribute.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "sku": sku,
        "name": name,
        "attribute_set_id": attributeSetId,
        "price": price,
        "status": status,
        "visibility": visibility,
        "type_id": typeIdValues.reverse[typeId],
        "created_at": createdAt.toIso8601String(),
        "updated_at": updatedAt.toIso8601String(),
        "weight": weight,
        "extension_attributes": extensionAttributes.toJson(),
        "product_links": List<dynamic>.from(productLinks.map((x) => x)),
        "options": List<dynamic>.from(options.map((x) => x)),
        "media_gallery_entries":
            List<dynamic>.from(mediaGalleryEntries.map((x) => x.toJson())),
        "tier_prices": List<dynamic>.from(tierPrices.map((x) => x)),
        "custom_attributes":
            List<dynamic>.from(customAttributes.map((x) => x.toJson())),
      };
}

class CustomAttribute {
  CustomAttribute({
    this.attributeCode,
    this.value,
  });

  String attributeCode;
  dynamic value;

  CustomAttribute copyWith({
    String attributeCode,
    dynamic value,
  }) =>
      CustomAttribute(
        attributeCode: attributeCode ?? this.attributeCode,
        value: value ?? this.value,
      );

  factory CustomAttribute.fromJson(Map<String, dynamic> json) =>
      CustomAttribute(
        attributeCode: json["attribute_code"],
        value: json["value"],
      );

  Map<String, dynamic> toJson() => {
        "attribute_code": attributeCode,
        "value": value,
      };
}

class ExtensionAttributes {
  ExtensionAttributes({
    this.websiteIds,
    this.categoryLinks,
    this.configurableProductOptions,
    this.configurableProductLinks,
  });

  List<int> websiteIds;
  List<CategoryLink> categoryLinks;
  List<ConfigurableProductOption> configurableProductOptions;
  List<int> configurableProductLinks;

  ExtensionAttributes copyWith({
    List<int> websiteIds,
    List<CategoryLink> categoryLinks,
    List<ConfigurableProductOption> configurableProductOptions,
    List<int> configurableProductLinks,
  }) =>
      ExtensionAttributes(
        websiteIds: websiteIds ?? this.websiteIds,
        categoryLinks: categoryLinks ?? this.categoryLinks,
        configurableProductOptions:
            configurableProductOptions ?? this.configurableProductOptions,
        configurableProductLinks:
            configurableProductLinks ?? this.configurableProductLinks,
      );

  factory ExtensionAttributes.fromJson(Map<String, dynamic> json) =>
      ExtensionAttributes(
        websiteIds: List<int>.from(json["website_ids"].map((x) => x)),
        categoryLinks: List<CategoryLink>.from(
            json["category_links"].map((x) => CategoryLink.fromJson(x))),
        configurableProductOptions: json["configurable_product_options"] == null
            ? null
            : List<ConfigurableProductOption>.from(
                json["configurable_product_options"]
                    .map((x) => ConfigurableProductOption.fromJson(x))),
        configurableProductLinks: json["configurable_product_links"] == null
            ? null
            : List<int>.from(json["configurable_product_links"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "website_ids": List<dynamic>.from(websiteIds.map((x) => x)),
        "category_links":
            List<dynamic>.from(categoryLinks.map((x) => x.toJson())),
        "configurable_product_options": configurableProductOptions == null
            ? null
            : List<dynamic>.from(
                configurableProductOptions.map((x) => x.toJson())),
        "configurable_product_links": configurableProductLinks == null
            ? null
            : List<dynamic>.from(configurableProductLinks.map((x) => x)),
      };
}

class CategoryLink {
  CategoryLink({
    this.position,
    this.categoryId,
  });

  int position;
  String categoryId;

  CategoryLink copyWith({
    int position,
    String categoryId,
  }) =>
      CategoryLink(
        position: position ?? this.position,
        categoryId: categoryId ?? this.categoryId,
      );

  factory CategoryLink.fromJson(Map<String, dynamic> json) => CategoryLink(
        position: json["position"],
        categoryId: json["category_id"],
      );

  Map<String, dynamic> toJson() => {
        "position": position,
        "category_id": categoryId,
      };
}

class ConfigurableProductOption {
  ConfigurableProductOption({
    this.id,
    this.attributeId,
    this.label,
    this.position,
    this.values,
    this.productId,
  });

  int id;
  String attributeId;
  String label;
  int position;
  List<ValueElement> values;
  int productId;

  ConfigurableProductOption copyWith({
    int id,
    String attributeId,
    String label,
    int position,
    List<ValueElement> values,
    int productId,
  }) =>
      ConfigurableProductOption(
        id: id ?? this.id,
        attributeId: attributeId ?? this.attributeId,
        label: label ?? this.label,
        position: position ?? this.position,
        values: values ?? this.values,
        productId: productId ?? this.productId,
      );

  factory ConfigurableProductOption.fromJson(Map<String, dynamic> json) =>
      ConfigurableProductOption(
        id: json["id"],
        attributeId: json["attribute_id"],
        label: json["label"],
        position: json["position"],
        values: List<ValueElement>.from(
            json["values"].map((x) => ValueElement.fromJson(x))),
        productId: json["product_id"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "attribute_id": attributeId,
        "label": label,
        "position": position,
        "values": List<dynamic>.from(values.map((x) => x.toJson())),
        "product_id": productId,
      };
}

class ValueElement {
  ValueElement({
    this.valueIndex,
  });

  int valueIndex;

  ValueElement copyWith({
    int valueIndex,
  }) =>
      ValueElement(
        valueIndex: valueIndex ?? this.valueIndex,
      );

  factory ValueElement.fromJson(Map<String, dynamic> json) => ValueElement(
        valueIndex: json["value_index"],
      );

  Map<String, dynamic> toJson() => {
        "value_index": valueIndex,
      };
}

class MediaGalleryEntry {
  MediaGalleryEntry({
    this.id,
    this.mediaType,
    this.label,
    this.position,
    this.disabled,
    this.types,
    this.file,
  });

  int id;
  Type mediaType;
  String label;
  int position;
  bool disabled;
  List<Type> types;
  String file;

  MediaGalleryEntry copyWith({
    int id,
    Type mediaType,
    String label,
    int position,
    bool disabled,
    List<Type> types,
    String file,
  }) =>
      MediaGalleryEntry(
        id: id ?? this.id,
        mediaType: mediaType ?? this.mediaType,
        label: label ?? this.label,
        position: position ?? this.position,
        disabled: disabled ?? this.disabled,
        types: types ?? this.types,
        file: file ?? this.file,
      );

  factory MediaGalleryEntry.fromJson(Map<String, dynamic> json) =>
      MediaGalleryEntry(
        id: json["id"],
        mediaType: typeValues.map[json["media_type"]],
        label: json["label"] == null ? null : json["label"],
        position: json["position"],
        disabled: json["disabled"],
        types: List<Type>.from(json["types"].map((x) => typeValues.map[x])),
        file: json["file"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "media_type": typeValues.reverse[mediaType],
        "label": label == null ? null : label,
        "position": position,
        "disabled": disabled,
        "types": List<dynamic>.from(types.map((x) => typeValues.reverse[x])),
        "file": file,
      };
}

enum Type { IMAGE, SMALL_IMAGE, THUMBNAIL, SWATCH_IMAGE }

final typeValues = EnumValues({
  "image": Type.IMAGE,
  "small_image": Type.SMALL_IMAGE,
  "swatch_image": Type.SWATCH_IMAGE,
  "thumbnail": Type.THUMBNAIL
});

enum TypeId { CONFIGURABLE, SIMPLE }

final typeIdValues =
    EnumValues({"configurable": TypeId.CONFIGURABLE, "simple": TypeId.SIMPLE});

class SearchCriteria {
  SearchCriteria({
    this.filterGroups,
    this.pageSize,
  });

  List<dynamic> filterGroups;
  int pageSize;

  SearchCriteria copyWith({
    List<dynamic> filterGroups,
    int pageSize,
  }) =>
      SearchCriteria(
        filterGroups: filterGroups ?? this.filterGroups,
        pageSize: pageSize ?? this.pageSize,
      );

  factory SearchCriteria.fromJson(Map<String, dynamic> json) => SearchCriteria(
        filterGroups: List<dynamic>.from(json["filter_groups"].map((x) => x)),
        pageSize: json["page_size"],
      );

  Map<String, dynamic> toJson() => {
        "filter_groups": List<dynamic>.from(filterGroups.map((x) => x)),
        "page_size": pageSize,
      };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}
