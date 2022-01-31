import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/ui/common/atoms/our_text.dart';
import 'package:flutter_clean_arch/ui/model_view/album/list_album_model_view.dart';

Widget asyncSnapshotListAlbumHelper(AsyncSnapshot snapshot) {
  Widget element = Container();
  if (snapshot.hasError) {
    element = H2(text: 'Error : ${snapshot.error.toString()}');
  } else if (!snapshot.hasData) {
    element = Center(
      child: CircularProgressIndicator(),
    );
  } else {
    element = ListAlbumModelView(snapshot);
  }
  return element;
}
