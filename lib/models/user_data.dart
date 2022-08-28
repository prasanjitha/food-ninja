class UserData {
  final String firstName;
  final String lastName;
  final String mobile;
  UserData({
    required this.firstName,
    required this.lastName,
    required this.mobile,
  });

  factory UserData.fromJson(Map<String, dynamic> json) => UserData(
        firstName: json["firstName"],
        lastName: json["lastName"],
        mobile: json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName,
        "lastName": lastName,
        "mobile": mobile,
      };
}
