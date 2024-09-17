class Product{
  String? name;
  String? description;
  String? sId;

  Product({
    this.sId,
    this.name,
    this.description
  });

  Product.fromJson(Map<String, dynamic> json) {
    sId = json['_id'];
    name = json['name'];
    description = json['description'];

  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_id'] = sId;
    data['name'] = name;
    data['description'] = description;
    return data;
  }

   List<Product> productList =[
    Product(name: 'Bananas', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs'),
    Product(name: 'Bananas', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs'),
    Product(name: 'Bananas', description: 'Proveniente de maxixe dispon]ivel patadjksbkqs'),
  ];



}