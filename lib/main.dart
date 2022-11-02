import 'package:flutter/material.dart';
import "package:google_fonts/google_fonts.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Hotels Booking",
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          leading: IconButton(
              onPressed: null,
              icon: Icon(Icons.arrow_back, size: 25, color: Colors.grey[800])),
          title: Text("Home",
              style: GoogleFonts.nunito(
                  color: Colors.black,
                  fontSize: 22,
                  fontWeight: FontWeight.w500)),
          actions: [
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.favorite_border_outlined,
                  color: Colors.grey[800],
                  size: 20,
                )),
            IconButton(
                onPressed: null,
                icon: Icon(
                  Icons.place,
                  color: Colors.grey[800],
                  size: 20,
                ))
          ],
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [SearchSection(), HotelSection()],
          ),
        ));
  }
}

class SearchSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[200],
      padding: EdgeInsets.fromLTRB(10, 25, 10, 25),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  child: Container(
                padding: EdgeInsets.only(left: 3),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          blurRadius: 5,
                          offset: Offset(0, 1))
                    ]),
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Lodon",
                      contentPadding: EdgeInsets.all(5),
                      border: InputBorder.none),
                ),
              )),
              SizedBox(
                width: 10,
              ),
              Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      color: Colors.green[300],
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green[300], shape: CircleBorder()),
                    onPressed: () {},
                    child: Icon(Icons.search, color: Colors.white),
                  )),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: [
               Container(
                 margin: EdgeInsets.all(10),
                 child:
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Choisir une date " , style: GoogleFonts.nunito(
                     color: Colors.grey[600],fontSize: 15
                 )),
                     SizedBox(height: 10),
                     Text("02-11-2022 " , style:GoogleFonts.nunito(fontSize: 17)),
                   ],
                 ),
               ),

               Container(
                 margin: EdgeInsets.all(10),
                 child:
                 Column(
                   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                   crossAxisAlignment: CrossAxisAlignment.start,
                   children: [
                     Text("Nombre de chambre " , style: GoogleFonts.nunito(
                         color: Colors.grey[600],fontSize: 15
                     )),
                     SizedBox(height: 10),
                     Text("01 chambre - 2 adultes" , style:GoogleFonts.nunito(fontSize: 17)),
                   ],
                 ),
               )
             ]
          )
        ],
      ),
    );
  }
}

class HotelSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 1500,
      color: Colors.white,
    );
  }
}
