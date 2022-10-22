import 'package:flutter/cupertino.dart';
import 'album.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Albums{
  List<Album> _albums = [];

  List<Album> get album {
    return [..._albums];
  }
}
