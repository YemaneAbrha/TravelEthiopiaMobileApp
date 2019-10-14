class LoginModel {
  final String fullName;
  final String token;
  final String phoneNumber;
  final String userId;

  LoginModel(this.fullName, this.token, this.phoneNumber, this.userId);

  LoginModel.fromJson(Map<String, dynamic> json)
      : fullName = json['fullName'],
        token = json['token'],
        phoneNumber = json['phoneNumber'],
        userId = json['id'];

  Map<String, dynamic> toJson() => {
        'fullName': fullName,
        'token': token,
        'phoneNumber': phoneNumber,
        'id': userId,
      };
}
