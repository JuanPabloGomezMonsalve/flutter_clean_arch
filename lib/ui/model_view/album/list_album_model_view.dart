import 'package:flutter/material.dart';
import 'album_model_view.dart';

class ListAlbumModelView extends StatelessWidget {
  final AsyncSnapshot snapshot;

  ListAlbumModelView(this.snapshot);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: snapshot.data.length,
        itemBuilder: (context, int index) {
          return AlbumModelView(
            description: 'Album id : ' + snapshot.data[index].id.toString(),
            title: snapshot.data[index].title.toString(),
            url: snapshot.data[index].thumbnailUrl.toString(),
          );
        });
  }
}
