class Account {
  String? accountId;
  String? username;
  String? fullName;
  String? email;
  String? password;
  String? phoneNumber;
  String? description;
  String? provinceName;
  String? image;
  String? accessToken;

  Account({
    this.accountId,
    this.username,
    this.fullName,
    this.email,
    this.password,
    this.phoneNumber,
    this.description,
    this.provinceName,
    this.image,
    this.accessToken
  });


  Account.fromJson(Map json)
      : accountId = json['accountId'],
        username = json['username'],
        fullName = json['fullName'],
        email = json['email'],
        password = json['password'],
        phoneNumber = json['phoneNumber'],
        description = json['description'],
        provinceName = json['provinceName'],
        image = json['image'],
        accessToken = json['accessToken'];
}