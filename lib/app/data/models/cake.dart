class CakeModel {
  final String product;
  final double version;
  final DateTime releaseDate;
  final List<Cake> cakes;
  final List<StaffContact> staffContacts;

  CakeModel({
    required this.product,
    required this.version,
    required this.releaseDate,
    required this.cakes,
    required this.staffContacts,
  });

  factory CakeModel.fromJson(Map<String, dynamic> json) {
    return CakeModel(
      product: json['product'],
      version: json['version'].toDouble(),
      releaseDate: DateTime.parse(json['releaseDate']),
      cakes: (json['cakes'] as List).map((e) => Cake.fromJson(e)).toList(),
      staffContacts:
          (json['staffContacts'] as List).map((e) => StaffContact.fromJson(e)).toList(),
    );
  }
}

class Cake {
  final int id;
  final String title;
  final String previewDescription;
  final String detailDescription;
  final String image;

  Cake({
    required this.id,
    required this.title,
    required this.previewDescription,
    required this.detailDescription,
    required this.image,
  });

  factory Cake.fromJson(Map<String, dynamic> json) {
    return Cake(
      id: json['id'],
      title: json['title'],
      previewDescription: json['previewDescription'],
      detailDescription: json['detailDescription'],
      image: json['image'],
    );
  }
}

class StaffContact {
  final int id;
  final String name;
  final Phones phones;
  final String role;
  final DateTime dateOfBirth;
  final List<String> email;

  StaffContact({
    required this.id,
    required this.name,
    required this.phones,
    required this.role,
    required this.dateOfBirth,
    required this.email,
  });

  factory StaffContact.fromJson(Map<String, dynamic> json) {
    return StaffContact(
      id: json['id'],
      name: json['name'],
      phones: Phones.fromJson(json['phones']),
      role: json['role'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      email: List<String>.from(json['email']),
    );
  }
}

class Phones {
  final String? home;
  final String? mobile;

  Phones({this.home, this.mobile});

  factory Phones.fromJson(Map<String, dynamic> json) {
    return Phones(
      home: json['home'],
      mobile: json['mobile'],
    );
  }
}
