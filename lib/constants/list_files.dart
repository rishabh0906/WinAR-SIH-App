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
final List<DestinationDetailsModel> listOfDelhiPlaces = [
  DestinationDetailsModel(
    id: 1,
    nameOfPlace: "India Gate",
    descriptionOfPlace: "India Gate, official name Delhi Memorial, originally called All-India War Memorial, monumental sandstone arch in New Delhi, dedicated to the troops of British India who died in wars fought between 1914 and 1919.",
    image: 'assets/DelhiIndiaGate.png',
    title: "Journey to India Gate",
    subTitle: "Pyre",
    isArAvailable: true,
    category: Category.placeCategory,
    state: "Delhi"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Safdarjung Tomb",
      descriptionOfPlace: "Very Nice Place",
      image: 'assets/DelhiSafdarjung.png',
      title: "Journey to Safdarjung Tomb",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Delhi"
  ),
  DestinationDetailsModel(
      id: 3,
      nameOfPlace: "Lotus Temple",
      descriptionOfPlace: "The Bahai Lotus Temple is one of the world's most beautiful religious buildings and a must-visit when in Delhi.",
      image: 'assets/DelhiLotusTemple.png',
      title: "Journey to Lotus Temple",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Delhi"
  ),
  DestinationDetailsModel(
      id: 4,
      nameOfPlace: "Humayu Tomb",
      descriptionOfPlace: "The Bahai Lotus Temple is one of the world's most beautiful religious buildings and a must-visit when in Delhi.",
      image: 'assets/DelhiHumayu.png',
      title: "Journey to Humayu Tomb",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Delhi"
  ),
  DestinationDetailsModel(
      id: 5,
      nameOfPlace: "Safdarjung Tomb",
      descriptionOfPlace: "Safdarjung's Tomb is the last enclosed garden tomb in Delhi in the tradition of Humayun's Tomb, though it if far less grand in scale. It was built in 1753- 54 as mausoleum of Safdarjung, the viceroy of Awadh under the Mughal Emperor, Mohammed Shah.",
      image: 'assets/DelhiSafdarjung.png',
      title: "Journey to Safdarjung Tomb",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Delhi"
  ),
];

// THis is the list of jaipur
final List<DestinationDetailsModel> listOfGujaratPlaces = [
  DestinationDetailsModel(
      id: 1,
      nameOfPlace: "Statue of Unity",
      descriptionOfPlace: "It represents more than a colossal structure facing the Sardar Sarovar Dam on the river Narmada. It is an iconic symbol of the Iron Man, who played an important role during Indias freedom struggle and thereafter in the unification of the princely states. It reminds the world of the towering personality of Sardar Vallabhbhai Patel, the nucleus of Indias integration as a united country.",
      image: 'assets/GujaratUnity.png',
      title: "Journey to Statue of Unity",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Gujarat"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Polo Forest",
      descriptionOfPlace: "The Polo forest is surrounded by mountains where you can explore river, dam, ancient temples and many more places.",
      image: 'assets/GujaratPoloForest.png',
      title: "Journey to Polo Forest",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Gujarat"
  ),
  DestinationDetailsModel(
      id: 3,
      nameOfPlace: "Modhera Sun Temple",
      descriptionOfPlace: "The Modhera Sun Temple, located in Gujarat, is dedicated to the Sun-God, or 'Surya. ' It is an architectural achievement maintained by the Archaeological Survey of India (ASI). With its intricate carvings and the splendid rectangular step-well, Surya Kund, the structure is beyond grand.",
      image: 'assets/GujaratSunTemple.png',
      title: "Journey to Modhera Sun Temple",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Gujarat"
  ),
  DestinationDetailsModel(
      id: 4,
      nameOfPlace: "Somnath Temple",
      descriptionOfPlace: "The site of Somnath has been a pilgrimage site from ancient times on account of being a Triveni Sangam (the confluence of three rivers: Kapila, Hiran and Saraswati). Soma, the Moon god, is believed to have lost his lustre due to a curse, and he bathed in the Sarasvati River at this site to regain it",
      image: 'assets/GujaratSomnath.png',
      title: "Journey to Polo Forest",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Gujarat"
  ),
];

// THis is the list of jaipur
final List<DestinationDetailsModel> listOfMumbaiPlaces = [
  DestinationDetailsModel(
      id: 1,
      nameOfPlace: "Gateway of India",
      descriptionOfPlace: "The Gateway of India was erected to commemorate the landing of King-Emperor George V, the first British monarch to visit India, in December 1911 at Ramchandani Road near Shyamaprasad Mukherjee Chowk.",
      image: "assets/MumbaiGOI.png",
      title: "Journey to Gateway Of India",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Mumbai"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Chhatrapati Shivaji Terminus",
      descriptionOfPlace: "The Chhatrapati Shivaji Terminus, formerly known as Victoria Terminus Station, in Mumbai, is an outstanding example of Victorian Gothic Revival architecture in India, blended with themes deriving from Indian traditional architecture.",
      image: "assets/MumbaiTerminus.png",
      title: "Journey to Taj Mahal",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Mumbai"
  ),
  DestinationDetailsModel(
      id: 2,
      nameOfPlace: "Elephanta Caves",
      descriptionOfPlace: "The Elephanta Caves contain rock cut stone sculptures, mostly in high relief, that show syncretism of Hindu and Buddhist ideas and iconography.",
      image: "assets/MumbaiElephanta.png",
      title: "Journey to Elephanta Caves",
      subTitle: "Falana Timkana",
      isArAvailable: true,
      category: Category.placeCategory,
      state: "Mumbai"
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