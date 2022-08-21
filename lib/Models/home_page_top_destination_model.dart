/// id : 1
/// destinationName : ""
/// imagePath : ""

class HomePageTopDestinationModel {
  HomePageTopDestinationModel({
      int? id, 
      String? destinationName, 
      String? imagePath,}){
    _id = id;
    _destinationName = destinationName;
    _imagePath = imagePath;
}

  HomePageTopDestinationModel.fromJson(dynamic json) {
    _id = json['id'];
    _destinationName = json['destinationName'];
    _imagePath = json['imagePath'];
  }
  int? _id;
  String? _destinationName;
  String? _imagePath;
HomePageTopDestinationModel copyWith({  int? id,
  String? destinationName,
  String? imagePath,
}) => HomePageTopDestinationModel(  id: id ?? _id,
  destinationName: destinationName ?? _destinationName,
  imagePath: imagePath ?? _imagePath,
);
  int? get id => _id;
  String? get destinationName => _destinationName;
  String? get imagePath => _imagePath;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['destinationName'] = _destinationName;
    map['imagePath'] = _imagePath;
    return map;
  }

}