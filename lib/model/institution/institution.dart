import 'package:donationapp/core/config/assets/app_images.dart';

class Institution {
  const Institution({
    required this.name,
    required this.place,
    required this.imageUrl,
  });

  final String name;
  final String place;
  final String imageUrl;
}
const institutions = [

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