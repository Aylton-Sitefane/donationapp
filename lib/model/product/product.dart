class Product{
  String? name;
  String? description;
  String? sId;
  String? quantity;
  String? image;
  bool? deliver;

  Product({
    this.sId,
    this.name,
    this.description,
    this.quantity,
    this.image,
    this.deliver,
  });

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];
    quantity = json['quantity'];
    image = json['image'];
    deliver = json['deliver'];

  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['description'] = description;
    data['quantity'] = quantity;
    data['image'] = image;
    data['deliver'] = deliver;
    return data;
  }

   static List<Product> productList =[
    Product(name: 'Bananas', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs', quantity: '2'),
    Product(name: 'Laranjas', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs',  quantity: '33'),
    Product(name: 'Cesta basica', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs', quantity: '44'),
  ];



}