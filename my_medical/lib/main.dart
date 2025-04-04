import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MyMedical',
      theme: ThemeData(
        // This is the theme of your application.

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange),
        useMaterial3: true,
      ),
      home: const HomeScreen(title: 'Medical Shop'),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key, required this.title});

  final String title;

  @override
  State<HomeScreen> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
        actions: <Widget>[
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_basket))
        ],

        leading: IconButton(
          onPressed: () {},
          icon: Image.asset(
            'assets/images/SmallLogo.png',
            height: 30,
            width: 30,
          ),
        ),
      ),
      body: Column(
        children: [
          SearchBar(),
          Expanded(
              child: Center(
            child: Text(' Search result will be displayed here'),
            Text(' Search result will be displayed here'),
          )),
        ],
      ),
      drawer: Drawer(
        child: Text('No item selected'),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SearchBar extends StatefulWidget {
  @override
  _SearchBarState createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  String query = '';

  void onQueryChanged(String newQuery) {
    setState(() {
      query = newQuery;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(14),
      child: TextField(
        onChanged: onQueryChanged,
        decoration: InputDecoration(
          labelText: 'Search',
          hoverColor: Colors.orange,
          border: OutlineInputBorder(),
          prefixIcon: Icon(Icons.search),
        ),
      ),
    );
  }
}
