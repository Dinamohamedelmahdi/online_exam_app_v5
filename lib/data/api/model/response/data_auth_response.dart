import '../../../../domain/models/auth_response_domain_model.dart';
import 'user_dto.dart';

class AuthResponseDto {
  AuthResponseDto({
      this.message, 
      this.token, 
      this.userDto,});

  AuthResponseDto.fromJson(dynamic json) {
    message = json['message'];
    token = json['token'];
    userDto = json['user'] != null ? UserDto.fromJson(json['user']) : null;

  }
  String? message;
  String? token;
  UserDto? userDto;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['message'] = message;
    map['token'] = token;
    if (userDto != null) {
      map['user'] = userDto?.toJson();
    }
    return map;
  }


  AuthResponse toAuthResponse() {
    return AuthResponse(
      message:message,
      token: token,
      user: userDto?.toUser(),

    );
  }

}