class Utent{
  String? sid;
  String? name;
  String? description;
  double? amount;

  Utent({
    this.sid,
    this.name,
    this.description,
    this.amount
  });

  Utent.fromJson(Map<String, dynamic> json) {
    sid = json['_sId'];
    name = json['name'];
    description = json['description'];
    amount = json['amount'];
  }

  Map<String, dynamic>toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_sId'] = sid;
    data['name'] = name;
    data['description'] = description;
    data['amount'] = amount;
    return data;

  }
}