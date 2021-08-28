class Order {
  late String clientId, productId, packageId;

  late List offers, galleryImagesIds, tasks;

  late int orderStatus;

  late DateTime placment, delivery;

  Order({
    required this.clientId,
    required this.productId,
    required this.packageId,
    required this.offers,
    required this.galleryImagesIds,
    required this.tasks,
    required this.orderStatus,
    required this.placment,
    required this.delivery,
  });

  Order.fromMap(Map map) {
    this.clientId = map['clientId'];
    this.productId = map['productId'];
    this.packageId = map['packageId'];
    this.offers = map['offers'];
    this.galleryImagesIds = map['galleryImagesIds'];
    this.tasks = map['tasks'];
    this.orderStatus = map['orderStatus'];
    this.placment = map['placment'];
    this.delivery = map['delivery'];
  }

  
  Map get map => {
        'clientId': this.clientId,
        'productId': this.productId,
        'packageId': this.packageId,
        'offers': this.offers,
        'galleryImagesIds': this.galleryImagesIds,
        'tasks': this.tasks,
        'orderStatus': this.orderStatus,
        'placment': this.placment,
        'delivery': this.delivery,
      };
}
