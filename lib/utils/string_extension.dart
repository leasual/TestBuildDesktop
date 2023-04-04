import 'dart:convert';

extension Base64 on String {
  String encodeBase64String() {
    Codec<String, String> stringToBase64 = utf8.fuse(base64);
    return stringToBase64.encode(this);
  }
  String encodeBase64Url() {
    Codec<String, String> stringToBase64 = utf8.fuse(base64Url);
    return stringToBase64.encode(this);
  }
}