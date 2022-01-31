import 'dart:convert';

import 'package:flutter_clean_arch/domain/models/album/album.dart';
import 'package:flutter_clean_arch/infraestructure/helpers/maps/common/base_mapper.dart';

class AlbumMapper implements BaseMapper<Album> {
  @override
  fromMap(Map<String, dynamic> json) => Album(
      userId: json['userId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl']);

  @override
  List<Album> fromJson(String str) =>
      List<Album>.from(json.decode(str).map((x) => fromMap(x)));
}
