

import 'package:get/get.dart';

class Language extends Translations{
  @override

  Map<String, Map<String, String>> get keys => {
    'bn_BD':{
      'hello': 'ওহে'
    },
    'en_US':{
      'hello': 'Hello'
    },
    'fr_FR':{
      'hello':'Bonjour'
    }
  };
}