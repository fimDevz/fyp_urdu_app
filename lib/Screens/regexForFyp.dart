import 'package:flutter/material.dart';
import '';

void regexForFy(){
  String line='ترنمول کے ١٠ سے ١٥';
  var regex=RegExp(r'^([١-٣])(.*)$');
  var matches=regex.firstMatch(line);
  print(matches.groupCount);
  print(matches.namedGroup(line));
}