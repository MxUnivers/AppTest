
import 'package:appflutter/favoriteWidget.dart';
import "package:flutter/material.dart";
import 'package:cached_network_image/cached_network_image.dart';



class RecipeScreem extends StatelessWidget {

  @override




  Widget build(BuildContext context) {

    Widget _titleSection =Container(
      padding: const  EdgeInsets.all(10),
      child:Row(
        children: [
          Expanded(child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: const EdgeInsets.only(bottom: 8),
                child: Text("Pizza facile",
                    style: TextStyle(fontWeight: FontWeight.w900 , fontSize:20) ),
              ),
              ],
          ),
          ),
          TextButton(
            style: ButtonStyle(
              foregroundColor: MaterialStateProperty.all<Color>(Colors.blue),
            ),
            onPressed: () => showDialog<String>(
              context: context,
              builder: (BuildContext context) => AlertDialog(
                title: const Text('AlertDialog Title'),
                content: const Text('AlertDialog description'),
                actions: <Widget>[
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'Cancel'),
                    child: const Text('Cancel'),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context, 'OK'),
                    child: const Text('OK'),
                  ),
                ],
              ),
            ),
            child: Text('Alert BUtton'),
          )
          ,
          FavoriteWidget(isFavorite : false ,  favoriteCount: 55 ),


        ],
      ) ,
    );


    Column _buildButtonColumn(Color color  ,  IconData icon , String label){
      return Column(
        children: [
          Icon(icon , color:color),
          Text(label,  style: TextStyle(fontSize: 15 , fontWeight: FontWeight.w400 , color: color),)
        ],);
    }

    Widget buttonSection = Container(
      padding: const  EdgeInsets.all(8),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _buildButtonColumn(Colors.blue, Icons.comment, "COMMENTS"),
          _buildButtonColumn(Colors.blue, Icons.share, "SHARE")
        ],
      ),
    );

    Widget description = Container(
      padding: const  EdgeInsets.all(32),
      child: Text("Parce que l’assaisonnement est la clé d’une recette réussie, pas question de lésiner sur les inspirations. Sauce vinaigrette, chutney, marinade, sauce onctueuse ou légère, mélange traditionnel ou idée originale ? On vous a préparé les plus belles recettes de sauces pour assaisonner vos plats  Parce que l’assaisonnement est la clé d’une recette réussie, pas question de lésiner sur les inspirations. Sauce vinaigrette, chutney, marinade, sauce onctueuse ou légère, mélange traditionnel ou idée originale ? On vous a préparé les plus belles recettes de sauces pour assaisonner vos plats s",
        softWrap: true,
      ),
    );


    return Scaffold(
        appBar: AppBar(
          title: Text("Mes recettes"),
        ),
        body: ListView(children: [
          CachedNetworkImage(
            imageUrl: "https://images.pexels.com/photos/2474661/pexels-photo-2474661.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
            width: 600 , height: 240,
            placeholder: (context, url) => Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error),
          ),
          _titleSection ,
          buttonSection ,
          description
        ],
        )
    );
  }
}


