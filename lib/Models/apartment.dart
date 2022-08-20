import 'package:teleport_ar/Models/user.dart';

class Apartment {
  String? id;
  String? title;
  String? image;
  String? location;
  String? description;
  double? rating;
  int? price;
  String? type;
  int? users;
  List<String>? facilities;
  User? owner;

  Apartment({
    this.description,
    this.facilities,
    this.id,
    this.image,
    this.location,
    this.owner,
    this.price,
    this.rating,
    this.title,
    this.type,
    this.users,
  });
}

final listApartmentTop = [
  Apartment(
    description:
        "An apartment is a private residence in a building or house that's divided into several separate dwellings. An apartment can be one small room or several. An apartment is a flat — it's usually a few rooms that you rent in a building.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment1',
    image: 'apartment1.jfif',
    location: 'Bali, Indonesia',
    owner: listUser[0],
    price: 230,
    rating: 4.5,
    title: 'Town Hall',
    type: 'Hot this month',
    users: 13,
  ),
  Apartment(
    description:
        "An apartment is a private residence in a building or house that's divided into several separate dwellings. An apartment can be one small room or several. An apartment is a flat — it's usually a few rooms that you rent in a building.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment2',
    image: 'apartment2.jfif',
    location: 'Garut, Indonesia',
    owner: listUser[1],
    price: 173,
    rating: 4.5,
    title: 'Babakan Seungit',
    type: 'Great Place',
    users: 40,
  ),
];
final listApartmentNear = [
  Apartment(
    description:
        "An apartment is a private residence in a building or house that's divided into several separate dwellings. An apartment can be one small room or several. An apartment is a flat — it's usually a few rooms that you rent in a building.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment3',
    image: 'apartment3.jfif',
    location: 'Bandung, Indonesia',
    owner: listUser[2],
    price: 221,
    rating: 4.5,
    title: 'Valley Mount',
    type: 'Pure',
    users: 39,
  ),
  Apartment(
    description:
        "An apartment is a private residence in a building or house that's divided into several separate dwellings. An apartment can be one small room or several. An apartment is a flat — it's usually a few rooms that you rent in a building.",
    facilities: ['2 Bedrooms', '1 Toilet', '1 Living Room', '1 Kitchen'],
    id: 'apartment4',
    image: 'apartment4.jfif',
    location: 'Garut, Indonesia',
    owner: listUser[1],
    price: 180,
    rating: 4.5,
    title: 'Loa Uhuy',
    type: 'Pure',
    users: 21,
  ),
];