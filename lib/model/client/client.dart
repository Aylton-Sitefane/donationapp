class Client{
  String? sId;
  String? name;
  String? gmail;
  String? description;
  String? password;

  Client({
    this.sId,
    this.name,
    this.gmail,
    this.description,
    this.password,
  });

  Client.fromJson(Map<String, dynamic> json){
    sId = json['_sId'];
    name= json['name'];
    gmail = json['gmail'];
    description = json['description'];
    password = json['password'];
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_sId'] = sId;
    data['name'] = name;
    data['gmail'] = gmail;
    data['description'] = description;
    data['password'] = password;
    return data;
  }
}