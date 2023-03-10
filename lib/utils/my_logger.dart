import 'package:flutter/foundation.dart';

/// Выводим сообщение в лог, только если приложение работает в debug режиме
/// к сообщению добавляется метка (задана жестко в коде)
logPrint(dynamic string){
  var tag = "CLOCKTV";
  if (kReleaseMode) { // is Release Mode ??
    print("$tag $string");
  } else {
    print("$tag $string");
  }
}

logPrintErr(dynamic string){
  var tag = "CLOCKTV Error!";
  if (kReleaseMode) { // is Release Mode ??
    print("$tag $string");
  } else {
    print("$tag $string");
  }
}