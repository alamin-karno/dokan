import 'package:dokan/features/shop/shop.dart';

class ProductModel {
  int? id;
  String? name;
  String? slug;
  String? postAuthor;
  String? permalink;
  String? dateCreated;
  String? dateCreatedGmt;
  String? dateModified;
  String? dateModifiedGmt;
  String? type;
  String? status;
  bool? featured;
  String? catalogVisibility;
  String? description;
  String? shortDescription;
  String? sku;
  String? price;
  String? regularPrice;
  String? salePrice;
  String? dateOnSaleFrom;
  String? dateOnSaleFromGmt;
  String? dateOnSaleTo;
  String? dateOnSaleToGmt;
  String? priceHtml;
  bool? onSale;
  bool? purchasable;
  int? totalSales;
  bool? virtual;
  bool? downloadable;
  List<DownloadModel?>? downloads;
  int? downloadLimit;
  int? downloadExpiry;
  String? externalUrl;
  String? buttonText;
  String? taxStatus;
  String? taxClass;
  bool? manageStock;
  String? stockQuantity;
  String? lowStockAmount;
  bool? inStock;
  String? backorders;
  bool? backordersAllowed;
  bool? backordered;
  bool? soldIndividually;
  String? weight;
  DimensionModel? dimensions;
  bool? shippingRequired;
  bool? shippingTaxable;
  String? shippingClass;
  int? shippingClassId;
  bool? reviewsAllowed;
  String? averageRating;
  int? ratingCount;
  List<int?>? relatedIds;
  // List<ProductUpsellIds?>? upsellIds;
  // List<ProductCrossSellIds?>? crossSellIds;
  int? parentId;
  String? purchaseNote;
  List<CategoryModel?>? categories;
  // List<ProductTags?>? tags;
  List<ImageModel?>? images;
  // List<ProductAttributes?>? attributes;
  // List<ProductDefaultAttributes?>? defaultAttributes;
  // List<ProductVariations?>? variations;
  // List<ProductGroupedProducts?>? groupedProducts;
  int? menuOrder;
  List<MetaData?>? metaData;
  StoreModel? store;
  LinkModel? links;

  ProductModel({
    this.id,
    this.name,
    this.slug,
    this.postAuthor,
    this.permalink,
    this.dateCreated,
    this.dateCreatedGmt,
    this.dateModified,
    this.dateModifiedGmt,
    this.type,
    this.status,
    this.featured,
    this.catalogVisibility,
    this.description,
    this.shortDescription,
    this.sku,
    this.price,
    this.regularPrice,
    this.salePrice,
    this.dateOnSaleFrom,
    this.dateOnSaleFromGmt,
    this.dateOnSaleTo,
    this.dateOnSaleToGmt,
    this.priceHtml,
    this.onSale,
    this.purchasable,
    this.totalSales,
    this.virtual,
    this.downloadable,
    this.downloads,
    this.downloadLimit,
    this.downloadExpiry,
    this.externalUrl,
    this.buttonText,
    this.taxStatus,
    this.taxClass,
    this.manageStock,
    this.stockQuantity,
    this.lowStockAmount,
    this.inStock,
    this.backorders,
    this.backordersAllowed,
    this.backordered,
    this.soldIndividually,
    this.weight,
    this.dimensions,
    this.shippingRequired,
    this.shippingTaxable,
    this.shippingClass,
    this.shippingClassId,
    this.reviewsAllowed,
    this.averageRating,
    this.ratingCount,
    this.relatedIds,
    // this.upsellIds,
    // this.crossSellIds,
    this.parentId,
    this.purchaseNote,
    this.categories,
    // this.tags,
    this.images,
    // this.attributes,
    // this.defaultAttributes,
    // this.variations,
    // this.groupedProducts,
    this.menuOrder,
    this.metaData,
    this.store,
    this.links,
  });

  ProductModel.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    slug = json['slug']?.toString();
    postAuthor = json['post_author']?.toString();
    permalink = json['permalink']?.toString();
    dateCreated = json['date_created']?.toString();
    dateCreatedGmt = json['date_created_gmt']?.toString();
    dateModified = json['date_modified']?.toString();
    dateModifiedGmt = json['date_modified_gmt']?.toString();
    type = json['type']?.toString();
    status = json['status']?.toString();
    featured = json['featured'] ?? false;
    catalogVisibility = json['catalog_visibility']?.toString();
    description = json['description']?.toString();
    shortDescription = json['short_description']?.toString();
    sku = json['sku']?.toString();
    price = json['price']?.toString();
    regularPrice = json['regular_price']?.toString();
    salePrice = json['sale_price']?.toString();
    dateOnSaleFrom = json['date_on_sale_from']?.toString();
    dateOnSaleFromGmt = json['date_on_sale_from_gmt']?.toString();
    dateOnSaleTo = json['date_on_sale_to']?.toString();
    dateOnSaleToGmt = json['date_on_sale_to_gmt']?.toString();
    priceHtml = json['price_html']?.toString();
    onSale = json['on_sale'] ?? false;
    purchasable = json['purchasable'] ?? false;
    totalSales = json['total_sales']?.toInt();
    virtual = json['virtual'] ?? false;
    downloadable = json['downloadable'] ?? false;
    if (json['downloads'] != null) {
      downloads = List<DownloadModel>.from(
          json['downloads'].map((x) => DownloadModel.fromJson(x)));
    }
    downloadLimit = json['download_limit']?.toInt();
    downloadExpiry = json['download_expiry']?.toInt();
    externalUrl = json['external_url']?.toString();
    buttonText = json['button_text']?.toString();
    taxStatus = json['tax_status']?.toString();
    taxClass = json['tax_class']?.toString();
    manageStock = json['manage_stock'] ?? false;
    stockQuantity = json['stock_quantity']?.toString();
    lowStockAmount = json['low_stock_amount']?.toString();
    inStock = json['in_stock'] ?? false;
    backorders = json['backorders']?.toString();
    backordersAllowed = json['backorders_allowed'] ?? false;
    backordered = json['backordered'] ?? false;
    soldIndividually = json['sold_individually'] ?? false;
    weight = json['weight']?.toString();
    dimensions = (json['dimensions'] != null)
        ? DimensionModel.fromJson(json['dimensions'])
        : null;
    shippingRequired = json['shipping_required'] ?? false;
    shippingTaxable = json['shipping_taxable'] ?? false;
    shippingClass = json['shipping_class']?.toString();
    shippingClassId = json['shipping_class_id']?.toInt();
    reviewsAllowed = json['reviews_allowed'] ?? false;
    averageRating = json['average_rating']?.toString();
    ratingCount = json['rating_count']?.toInt();
    if (json['related_ids'] != null) {
      relatedIds = List<int>.from(json['related_ids']);
    }
    parentId = json['parent_id']?.toInt();
    purchaseNote = json['purchase_note']?.toString();
    if (json['categories'] != null) {
      categories = List<CategoryModel>.from(
          json['categories'].map((x) => CategoryModel.fromJson(x)));
    }
    if (json['images'] != null) {
      images = List<ImageModel>.from(
          json['images'].map((x) => ImageModel.fromJson(x)));
    }
    menuOrder = json['menu_order']?.toInt();
    if (json['meta_data'] != null) {
      metaData = List<MetaData>.from(
          json['meta_data'].map((x) => MetaData.fromJson(x)));
    }
    store = (json['store'] != null) ? StoreModel.fromJson(json['store']) : null;
    links =
        (json['_links'] != null) ? LinkModel.fromJson(json['_links']) : null;
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['slug'] = slug;
    data['post_author'] = postAuthor;
    data['permalink'] = permalink;
    data['date_created'] = dateCreated;
    data['date_created_gmt'] = dateCreatedGmt;
    data['date_modified'] = dateModified;
    data['date_modified_gmt'] = dateModifiedGmt;
    data['type'] = type;
    data['status'] = status;
    data['featured'] = featured;
    data['catalog_visibility'] = catalogVisibility;
    data['description'] = description;
    data['short_description'] = shortDescription;
    data['sku'] = sku;
    data['price'] = price;
    data['regular_price'] = regularPrice;
    data['sale_price'] = salePrice;
    data['date_on_sale_from'] = dateOnSaleFrom;
    data['date_on_sale_from_gmt'] = dateOnSaleFromGmt;
    data['date_on_sale_to'] = dateOnSaleTo;
    data['date_on_sale_to_gmt'] = dateOnSaleToGmt;
    data['price_html'] = priceHtml;
    data['on_sale'] = onSale;
    data['purchasable'] = purchasable;
    data['total_sales'] = totalSales;
    data['virtual'] = virtual;
    data['downloadable'] = downloadable;
    if (downloads != null) {
      final v = downloads;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['downloads'] = arr0;
    }
    data['download_limit'] = downloadLimit;
    data['download_expiry'] = downloadExpiry;
    data['external_url'] = externalUrl;
    data['button_text'] = buttonText;
    data['tax_status'] = taxStatus;
    data['tax_class'] = taxClass;
    data['manage_stock'] = manageStock;
    data['stock_quantity'] = stockQuantity;
    data['low_stock_amount'] = lowStockAmount;
    data['in_stock'] = inStock;
    data['backorders'] = backorders;
    data['backorders_allowed'] = backordersAllowed;
    data['backordered'] = backordered;
    data['sold_individually'] = soldIndividually;
    data['weight'] = weight;
    if (dimensions != null) {
      data['dimensions'] = dimensions!.toJson();
    }
    data['shipping_required'] = shippingRequired;
    data['shipping_taxable'] = shippingTaxable;
    data['shipping_class'] = shippingClass;
    data['shipping_class_id'] = shippingClassId;
    data['reviews_allowed'] = reviewsAllowed;
    data['average_rating'] = averageRating;
    data['rating_count'] = ratingCount;
    if (relatedIds != null) {
      final v = relatedIds;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v);
      }
      data['related_ids'] = arr0;
    }
    data['parent_id'] = parentId;
    data['purchase_note'] = purchaseNote;
    if (categories != null) {
      final v = categories;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['categories'] = arr0;
    }

    if (images != null) {
      final v = images;
      final arr0 = [];
      v!.forEach((v) {
        arr0.add(v!.toJson());
      });
      data['images'] = arr0;
    }
    data['menu_order'] = menuOrder;
    if (metaData != null) {
      final v = metaData;
      final arr0 = [];
      for (var v in v!) {
        arr0.add(v!.toJson());
      }
      data['meta_data'] = arr0;
    }
    if (store != null) {
      data['store'] = store!.toJson();
    }
    if (links != null) {
      data['_links'] = links!.toJson();
    }
    return data;
  }
}
