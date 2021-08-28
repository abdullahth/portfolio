class Client {
  late String clientName, clientEmail, clientAccessCode;
  late DateTime firstOrderDate;
  late List orders;

  Client({
    required this.clientName,
    required this.clientEmail,
    required this.clientAccessCode,
    required this.firstOrderDate,
    required this.orders,
  });

  Client.fromMap(Map map) {
    this.clientName = map['clientName'];
    this.clientEmail = map['clientEmail'];
    this.clientAccessCode = map['clientAccessCode'];
    this.firstOrderDate = map['firstOrderDate'];
    this.orders = map['orders'];
  }
  Map get map => {
        'clientName': this.clientName,
        'clientEmail': this.clientEmail,
        'clientAccessCode': this.clientAccessCode,
        'firstOrderDate': this.firstOrderDate,
        'orders': this.orders,
      };
}
