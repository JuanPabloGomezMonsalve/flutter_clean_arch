import 'dart:convert';
import 'dart:io';
import "package:http/http.dart" as http;
import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/domain/models/album/gateway/alubm_gateway.dart';
import 'package:flutter_clean_arch/infraestructure/helpers/maps/album/album_mapper.dart';

class AlbumApiDelay extends AlbumGateway {
  AlbumMapper _albumMapper = AlbumMapper();

  @override
  Future<List<Album>> getAll() async {
    sleep(Duration(seconds: 4));
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/'));
    if (response.statusCode == 200) {
      return _albumMapper.fromJson(response.body);
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }

  @override
  Future<Album> getByID(String id) async {
    sleep(Duration(seconds: 4));
    final response = await http
        .get(Uri.parse('https://jsonplaceholder.typicode.com/photos/' + id));
    if (response.statusCode == 200) {
      return _albumMapper.fromMap(jsonDecode(response.body));
    } else {
      throw Exception('Fue imposible adquirir esta url');
    }
  }
}
