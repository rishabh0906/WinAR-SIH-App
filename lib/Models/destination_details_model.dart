/// id : 1
/// nameOfPlace : ""
/// descriptionOfPlace : ""
/// image : ""
/// title : ""
/// subTitle : ""
/// isArAvailable : true
/// category : 1
/// state : ""

class DestinationDetailsModel {
  DestinationDetailsModel({
      int? id, 
      String? nameOfPlace, 
      String? descriptionOfPlace, 
      String? image, 
      String? title, 
      String? subTitle, 
      bool? isArAvailable, 
      int? category, 
      String? state,}){
    _id = id;
    _nameOfPlace = nameOfPlace;
    _descriptionOfPlace = descriptionOfPlace;
    _image = image;
    _title = title;
    _subTitle = subTitle;
    _isArAvailable = isArAvailable;
    _category = category;
    _state = state;
}

  DestinationDetailsModel.fromJson(dynamic json) {
    _id = json['id'];
    _nameOfPlace = json['nameOfPlace'];
    _descriptionOfPlace = json['descriptionOfPlace'];
    _image = json['image'];
    _title = json['title'];
    _subTitle = json['subTitle'];
    _isArAvailable = json['isArAvailable'];
    _category = json['category'];
    _state = json['state'];
  }
  int? _id;
  String? _nameOfPlace;
  String? _descriptionOfPlace;
  String? _image;
  String? _title;
  String? _subTitle;
  bool? _isArAvailable;
  int? _category;
  String? _state;
DestinationDetailsModel copyWith({  int? id,
  String? nameOfPlace,
  String? descriptionOfPlace,
  String? image,
  String? title,
  String? subTitle,
  bool? isArAvailable,
  int? category,
  String? state,
}) => DestinationDetailsModel(  id: id ?? _id,
  nameOfPlace: nameOfPlace ?? _nameOfPlace,
  descriptionOfPlace: descriptionOfPlace ?? _descriptionOfPlace,
  image: image ?? _image,
  title: title ?? _title,
  subTitle: subTitle ?? _subTitle,
  isArAvailable: isArAvailable ?? _isArAvailable,
  category: category ?? _category,
  state: state ?? _state,
);
  int? get id => _id;
  String? get nameOfPlace => _nameOfPlace;
  String? get descriptionOfPlace => _descriptionOfPlace;
  String? get image => _image;
  String? get title => _title;
  String? get subTitle => _subTitle;
  bool? get isArAvailable => _isArAvailable;
  int? get category => _category;
  String? get state => _state;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['nameOfPlace'] = _nameOfPlace;
    map['descriptionOfPlace'] = _descriptionOfPlace;
    map['image'] = _image;
    map['title'] = _title;
    map['subTitle'] = _subTitle;
    map['isArAvailable'] = _isArAvailable;
    map['category'] = _category;
    map['state'] = _state;
    return map;
  }

}