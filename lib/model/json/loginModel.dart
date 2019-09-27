class LoginModel {
  final String userName;
  final String token;
  final String email;
  final String userId;

  LoginModel(this.userName, this.token, this.email, this.userId);

  LoginModel.fromJson(Map<String, dynamic> json)
      : userName = json['name'],
        token = json['token'],
        email = json['email'],
        userId = json['id'];

  Map<String, dynamic> toJson() => {
        'name': userName,
        'token': token,
        'email': email,
        'id': userId,
      };
}
