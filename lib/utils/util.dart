import 'dart:convert';
import 'package:convert/convert.dart';
import 'package:crypto/crypto.dart' as crypto;
import 'package:uuid/uuid.dart';

String md5(String data) {
  var content = Utf8Encoder().convert(data);
  var md5 = crypto.md5;
  var digest = md5.convert(content);
  var password = hex.encode(digest.bytes);
  return password;
}

String uuid(){
  return Uuid().v4().toString().replaceAll("-", "");
}

String convertToCountryCode(String description){
  switch(description){
    case "简体中文":
      return "zh_Hans";
    default:
      return "en";
  }
}