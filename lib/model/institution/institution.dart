import 'package:donationapp/core/config/assets/app_images.dart';

class Institution {
  String? sId;
  String? name;
  String? place;
  String? imageUrl;
  List<Images>? imagesUrl;
  
  Institution({
    this.sId,
    this.name,
    this.place,
    this.imageUrl,
    this.imagesUrl

  });

  Institution.toJson(Map<String, dynamic> json) {
    sId = json['_sId'];
    name = json['name'];
    place = json['place'];
    if (json['images'] != null) {
      imagesUrl = <Images>[];
      json['images'].forEach((v) {
        imagesUrl!.add(new Images.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson(){
    final Map<String, dynamic> data = <String, dynamic>{};
    data['_sId'] = sId;
    data['name'] = name;
    data['place'] = place;
    if (this.imagesUrl != null) {
      data['images'] = this.imagesUrl!.map((v) => v.toJson()).toList();
    }
    return data;
  }

}
List<Institution>institutions = [

  Institution(
    name: 'Machu Picchu',
    place: 'Peru',
    imageUrl: AppImages.introImage,
  ),
  Institution(
    name: 'Vitznau',
    place: 'Switzerland',
    imageUrl: AppImages.introImage,
  ),
  Institution(
    name: 'Bali',
    place: 'Indonesia',
    imageUrl: AppImages.introImage,
  ),
  Institution(
    name: 'Mexico City',
    place: 'Mexico',
    imageUrl: AppImages.introImage,
  ),
  Institution(
    name: 'Cairo',
    place: 'Egypt',
    imageUrl: AppImages.introImage,
  ),
];

class Images {
  int? image;
  String? url;
  String? sId;

  Images({this.image, this.url, this.sId});

  Images.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    url = json['url'];
    sId = json['_id'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['url'] = this.url;
    data['_id'] = this.sId;
    return data;
  }
}