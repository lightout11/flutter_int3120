import 'package:flutter/cupertino.dart';
import 'album.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Albums with ChangeNotifier {
  List<Album> _albums = [];

  List<Album> get album {
    return [..._albums];
  }

  Future<void> fetchAndSetalbums() async {
    final url = Uri.parse(
        'https://sound-cloud-flutter-default-rtdb.asia-southeast1.firebasedatabase.app/');
    try {
      final response = await http.get((url));
      final extractedData = json.decode(response.body) as Map<String, dynamic>;
      if (extractedData == null) {
        return;
      }
      final List<Album> loadedAlbums = [];
      extractedData.forEach((albumId, albumData) {
        loadedAlbums.add(Album(
          id: albumId,
          title: albumData['title'],
          description: albumData['description'],
          imageUrl: albumData['imageUrl'],
          isFavorite: albumData['isFavorite'],
        ));
      });
      _albums = loadedAlbums;
      notifyListeners();
    } catch (error) {
      throw (error);
    }
  }

  Future<void> addalbum(Album album) async {
    final url = Uri.parse(
        'https://flutter-update-ductuan-default-rtdb.asia-southeast1.firebasedatabase.app/albums.json');
    try {
      final response = await http.post(
        url,
        body: json.encode({
          'title': album.title,
          'description': album.description,
          'imageUrl': album.imageUrl,
          'isFavorite': album.isFavorite,
        }),
      );
      final newAlbum = Album(
        title: album.title,
        description: album.description,
        imageUrl: album.imageUrl,
        id: json.decode(response.body)['name'],
      );
      _albums.add(newAlbum);
      notifyListeners();
    } catch (error) {
      print(error);
      throw error;
    }
  }
}
