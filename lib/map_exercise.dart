void main() {
  var myMap = {
    'name': 'Nurbolot',
    'age': 25,
    'city': 'Bishkek',
    'address': [
      {'Country': 'Kyrgyzstan', 'City': 'Bishkek'},
      {'Country': 'Turkey', 'City': 'Denizli'}
    ]
  };
  var obj = Person.fromJson(myMap);
  print(obj.age);
  print(obj.name);
  var myAddress = obj.address;
  myAddress?.map((e) => print(e.city)).toList();
}

class Person {
  String? name;
  int? age;
  String? city;
  List<Address>? address;
  Person({
    this.name,
    this.age,
    this.city,
    this.address,
  });
  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    city = json['city'];
    if (json['address'] != null) {
      address = [];
      (json['address'] as List).forEach((element) {
        address!.add(Address.fromJson(element));
      });
    }
  }
}

class Address {
  String? city;
  String? country;
  Address({
    this.city,
    this.country,
  });
  Address.fromJson(Map<String, dynamic> json) {
    city = json['City'];
    country = json['Country'];
  }
}






// var addressList = myMap['address'];
  // (addressList as List).forEach((element) {
  //   print(element['Country']);
  //   print(element['City']);
  // });
  // var obj = Person.fromJson(myMap);
  // var objAdr = Address.fromJson(myMap);
  // print(obj.name);
  // print(obj.name);
  // var myAddress = obj.address;
  // myAddress?.map((e) => print(e.city)).toList();







// class Person {
//   String? name;
//   int? age;
//   String? city;
//   List<Address>? address;
//   Person({this.name, this.age, this.city, this.address});

//   Person.fromJson(Map<String, dynamic> json) {
//     name = json['name'];
//     age = json['age'];
//     city = json['city'];
//     // address = json['address'];
//     if (json['address'].isNotEmpty) {
//       address = <Address>[];
//       (json['address'] as List).forEach((element) {
//         address!.add(Address.fromJson(element));
//       });
//     }
//   }
// }

// class Address {
//   String? country;
//   String? city;
//   Address({
//     this.country,
//     this.city,
//   });

//   Address.fromJson(Map<String, dynamic> json) {
//     country = json['Country'];
//     city = json['City'];
//     // address = json['address'];
//   }
// }
