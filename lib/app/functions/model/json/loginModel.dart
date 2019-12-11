class LoginModel {
  final String name;
  final String token;
  final String phoneNumber;
  final String id;

  LoginModel(this.name, this.token, this.phoneNumber, this.id);

  LoginModel.fromJson(Map<String, dynamic> json)
      : name = json['data']['user']['name'],
        token = json['data']['token'],
        phoneNumber = json['data']['user']['phonenumber'],
        id = json['data']['user']['_id'];

  Map<String, dynamic> toJson() => {
        'fullName': name,
        'token': token,
        'phoneNumber': phoneNumber,
        'id': id,
      };
}
