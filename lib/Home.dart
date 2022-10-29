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
            backgroundColor: Colors.white,
            body:
            Column(
              verticalDirection: VerticalDirection.down,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'rechercher sur jumia',
                    hintText: "rechercher sur jumia "
                  ),
                )
              ],
            )

        ));
  }
}
