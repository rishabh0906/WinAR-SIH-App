import 'package:teleport_ar/Models/destination_details_model.dart';
import 'package:teleport_ar/Models/home_page_top_destination_model.dart';
import 'package:teleport_ar/constants/category.dart';

class PlaceId{
  static const int nagpurId = 1;
  static const int jaipurId = 2;
  static const int varanasiId = 3;
  static const int westBengalId = 4;
}

// The list of places to show on top of home page
final List<HomePageTopDestinationModel> listOfTopDestination = [
  HomePageTopDestinationModel(
      id: PlaceId.nagpurId,
      destinationName: "Nagpur",
      imagePath: "assets/nagpurPic.png"
  ),
  HomePageTopDestinationModel(
      id: PlaceId.jaipurId,
      destinationName: "Jaipur",
      imagePath: "assets/jaipurPic.png"
  ),
  HomePageTopDestinationModel(
      id: PlaceId.varanasiId,
      destinationName: "Varanasi",
      imagePath: "assets/varanasiPic.png"
  ),
  HomePageTopDestinationModel(
      id: PlaceId.westBengalId,
      destinationName: "West Bengal",
      imagePath: "assets/westbengalPic.png"
  )
];

// THis is the list of nagpur
final List<DestinationDetailsModel> listOfNagpurPlaces = [
  DestinationDetailsModel(
    id: 1,
    nameOfPlace: "Taj Mahal",
    descriptionOfPlace: "Very Nice Place",
    image: 'assets/pyramids.jpg',
    title: "Journey to Taj Mahal",
    subTitle: "Falana Timkana",
    isArAvailable: true,
    category: Category.placeCategory,
    state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/maldives.jpg',
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 3,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/paris.jpg',
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
];

// THis is the list of jaipur
final List<DestinationDetailsModel> listOfJaipurPlaces = [
  DestinationDetailsModel(
      id: 1,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/venice.jpg',
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/rio.jpg',
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 3,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/paris.jpg',
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
];

// THis is the list of jaipur
final List<DestinationDetailsModel> listOfVaranasiPlaces = [
  DestinationDetailsModel(
      id: 1,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: "assets/nagpurPic.png",
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: "assets/nagpurPic.png",
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
];

// THis is the list of jaipur
final List<DestinationDetailsModel> listOfWestBengalPlaces = [
  DestinationDetailsModel(
      id: 1,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: "assets/nagpurPic.png",
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Taj Mahal",
      descriptionOfPlace: "Very Nice Place",
      image: "assets/nagpurPic.png",
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Nagpur"
  ),
];