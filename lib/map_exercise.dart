void main() {
  Map<String, dynamic> myMap = {
    'name': 'Nurba',
    'age': 25,
    'hair': 'black',
    'address': [
      {'district': 'Archa-beshik', 'street': 'Ysyk-kol', 'number': 337},
      {'district': 'Alamedin', 'street': 'Auezova', 'number': 4}
    ]
  };

  var obj = Person.fromJson(myMap);
  print(obj.name);
}

class Person {
  String? name;
  int? age;
  String? hair;
  List<Address>? address;

  Person({
    this.name,
    this.age,
    this.hair,
    this.address,
  });

  Person.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    age = json['age'];
    hair = json['hair'];
    if (json['address'] != null) {
      address = <Address>[];
      (json['address'] as List).forEach((element) {
        address?.add(Address.fromJson(element));
      });
    }
  }
}

class Address {
  String? district;
  String? street;
  int? number;

  Address({this.district, this.street, this.number});

  Address.fromJson(Map<String, dynamic> json) {
    district = json['district'];
    street = json['street'];
    number = json['number'];
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
