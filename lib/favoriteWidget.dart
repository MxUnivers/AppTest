import  "package:flutter/material.dart";


class FavoriteWidget extends StatefulWidget{
  final bool isFavorite ;
  final int favoriteCount ;
  const  FavoriteWidget ({ required this.isFavorite , required this.favoriteCount});
  _FavoriteWidgetState createState() => _FavoriteWidgetState(this.isFavorite ,this.favoriteCount);
}

class _FavoriteWidgetState extends State<FavoriteWidget> {
  bool  _isFavorite;
  int  _favoriteCount;
  @override
   _FavoriteWidgetState(this._isFavorite , this._favoriteCount);

  void _toggleButton() {
    setState(() {
      if(_isFavorite){
        _isFavorite = false;
        _favoriteCount -= 1;
      }
      else{
        _isFavorite = true;
        _favoriteCount += 1;
      }
    });
}
  Widget build(BuildContext context){
    return Row(
          children: [
            IconButton(
                onPressed: _toggleButton,
                icon: _isFavorite ? Icon(Icons.favorite) : Icon(Icons.favorite_border) ,
            color: Colors.red,),
            Text("$_favoriteCount")
          ],
        );
  }
}

