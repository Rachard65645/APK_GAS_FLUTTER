class User {
  final String name;
  final String email;
  final String password;
  final String phone;
  final String city;
  final String adress;

  User({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.city,
    required this.adress,
  });

   // Factory constructor to create a User object from JSON,// get
  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      name: json['name'],
      email: json['email'],
      password: json['password'],
      phone: json['phone'],
      city: json['city'], 
      adress: json['adress'],
    );
  }

  // Method to convert a User object to JSOn //post
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'email': email,
      'password': password,
      'phone': phone,
      'city': city,
      'adress':adress,
     
    };
  }
}


