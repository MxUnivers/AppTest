import "package:flutter/material.dart";

class Home extends StatefulWidget {
  const Home({super.key});
  @override
  // ···
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _biggerFont = const TextStyle(fontSize: 18);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  // fonction de notre application

  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Salut tout le monde",
        home: Scaffold(
            appBar: AppBar(
              title: Text("Jumia"),
              backgroundColor: Colors.black54,
            ),
            backgroundColor: Colors.blueGrey,
            body:
            ListView(scrollDirection: Axis.vertical,
              children: [
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    border: OutlineInputBorder(borderRadius: BorderRadius.horizontal()),
                    hintText: "rechercher sur jumia ",
                    hintStyle: TextStyle(color: Colors.white),
                    labelText: "text"
                  ),
                ),
                // Image en question
                Image.asset(
                  'images/fraise.jpg' ,
                  width:double.infinity,
                  height: 300.0,)
                ,
                Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,verticalDirection: VerticalDirection.down,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                child: Icon(Icons.shopify ,  size: 50.0),
                              ),
                              Text("Nos marques",style: TextStyle(),)
                            ],
                          ),

                          Column(
                            children: [
                              ElevatedButton(onPressed: (){}, child: Icon(Icons.airplanemode_active ,  size: 50.0),),
                              Text("Jumia Gold",style: TextStyle(),)
                            ],
                          )
                          ,
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.deepOrangeAccent),
                                child: Icon(Icons.food_bank ,  size: 50.0),
                              ),
                              Text("Jumia Food",style: TextStyle(),)
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.blueGrey),
                                child: Icon(Icons.mobile_friendly ,  size: 50.0),
                              ),
                              Text("Recharge mobile",style: TextStyle(),)
                            ],
                          )
                        ],
                      )
                      ,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.orangeAccent),
                                child: Icon(Icons.power ,  size: 50.0),
                              ),
                              Text("Jumia Prime",style: TextStyle(),)
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                child: Icon(Icons.price_change ,  size: 50.0),
                              ),Text("Tout a 400 fcfa",style: TextStyle(),)
                            ],
                          ),
                          Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.grey),
                                child: Icon(Icons.add_business_outlined ,  size: 50.0),
                              ),Text("Supermarché",style: TextStyle(),)
                            ],
                          ),Column(
                            children: [
                              ElevatedButton(
                                onPressed: (){},
                                style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
                                child: Icon(Icons.price_change ,  size: 50.0),
                              ),Text("Commande par",style: TextStyle(),)
                              ,Text("téléphone",style: TextStyle(),)
                            ],
                          ),
                        ],
                      ),
                      Row()
                    ],
                  ),
                )
              ],
            )

        ));
  }
}
