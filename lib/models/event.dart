class Event {
  // PROPERTIES //
  int _id;
  int _hostId;
  String _name;
  String _description;
  String _locationName;
  DateTime _startTime;
  DateTime _endTime;
  int _age;
  int _price;
  String _category;
  bool _isUsed;
  DateTime _creationDate;

  // CONSTRUCTORS //
  Event.create();
  Event({int hostId, String name, String description, String locationName, DateTime startTime, DateTime endTime, 
  int age,int price, String category, bool isUsed}) {
    hostId = hostId;
    name = name;
    description = description;
    locationName = locationName;
    startTime = startTime;
    endTime = endTime;
    age = age;
    price = price;
    category = category;
    isUsed = isUsed;
    creationDate = DateTime.now();
  }
  Event.createFromMap(Iterable<Map<String, dynamic>> map){
    map.forEach((item) {
      id = item['id'];
      hostId = item['host_id'];
      name = item['name'];
      description = item['description'];
      locationName = item['location_name'];
      startTime= item['start_time'];
      endTime = item['end_time'];
      age = item['age'];
      price = item['price'];
      category = item['category'];
      isUsed = item['is_used'];
      creationDate = item['creation_date'];
    });
  }

  // GETTERS //
  int get id => _id;
  int get hostId => _hostId;
  String get name => _name;
  String get description => _description;
  String get locationName => _locationName;
  DateTime get startTime => _startTime;
  DateTime get endTime => _endTime;
  int get age => _age;
  int get price => _price;
  String get category => _category;
  bool get isUsed => _isUsed;
  DateTime get creationDate => _creationDate;

  // SETTERS //
  set id(int id) => _id = id;
  set hostId(int hostId) => _hostId = hostId;
  set name(String name) => _name = name;
  set description(String description) => _description = description;
  set locationName(String locationName) => _locationName = locationName;
  set startTime(DateTime startTime) => _startTime = startTime;
  set endTime(DateTime endTime) => _endTime = endTime;
  set age(int age) => _age = age;
  set price(int price) => _price = price;
  set category(String category) => _category = category;
  set isUsed(bool isUsed) => _isUsed = isUsed;
  set creationDate(DateTime creationDate) => _creationDate = creationDate;

  // METHODS //
  /// Return a Map<String, dynamic> with keys are the properties of User, values are the properties' values.
  Map<String, dynamic> getProperties() {
    Map<String, dynamic> map = {};
    map['id'] = id;
    map['hostId'] = hostId;
    map['name'] = name;
    map['description'] = description;
    map['locationName'] = locationName;
    map['startTime'] = startTime;
    map['endTime'] = endTime;
    map['age'] = age;
    map['price'] = price;
    map['category'] = category;
    map['isUsed'] = isUsed;
    map['creationDate'] = creationDate;

    return map;
  }

  String toString() => "An instance of Event id=$id, name=$name";

}