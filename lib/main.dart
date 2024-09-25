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
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // TRY THIS: Try running your application with "flutter run". You'll see
        // the application has a purple toolbar. Then, without quitting the app,
        // try changing the seedColor in the colorScheme below to Colors.green
        // and then invoke "hot reload" (save your changes or press the "hot
        // reload" button in a Flutter-supported IDE, or press "r" if you used
        // the command line to start the app).
        //
        // Notice that the counter didn't reset back to zero; the application
        // state is not lost during the reload. To reset the state, use hot
        // restart instead.
        //
        // This works for code too, not just values: Most code changes can be
        // tested with just a hot reload.
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> titles = ['Bike', 'Boat', 'Bus', 'Car'];
  @override
  Widget build(BuildContext context) {
    // final icons = [
    //   // Icons.directions_bike,
    //   // Icons.directions_boat,
    //   // Icons.directions_bus,
    //   // Icons.directions_car,
    // ];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        title: const Text("List View"),
      ),
      body: ListView.builder(
          itemCount: titles.length,
          itemBuilder: (context, nomor) {
            return Card(
                child: ListTile(
                    // leading: Icon(icons[nomor]),
                    leading: CircleAvatar(
                      backgroundImage:
                          NetworkImage('https://picsum.photos/200/300?=$nomor'),
                    ),
                    title: Text(titles[nomor]),
                    onTap: () {
                      setState(() {
                        titles.removeAt(nomor);
                      });
                    }));
          }),
    );
  }

  //   children: const [
  //     ListTile(
  //       // leading: Icon(Icons.sunny),
  //       leading: CircleAvatar(
  //         backgroundImage: AssetImage("sun.jpeg"),
  //       ),
  //       title: Text("Sun"),
  //       trailing: Icon(Icons.keyboard_arrow_right),
  //     ),
  //     ListTile(
  //       leading: Icon(Icons.brightness_3),
  //       title: Text("Moon"),
  //       trailing: Icon(Icons.keyboard_arrow_right),
  //     ),
  //     ListTile(
  //       leading: Icon(Icons.star),
  //       title: Text("Star"),
  //       trailing: Icon(Icons.keyboard_arrow_right),
  //     )
  //   ],
  // )
  // // body: ListView(
  //   children: [
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.red,
  //     ),
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.blue,
  //     ),
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.green,
  //     ),
  //   ],
  // ), // This trailing comma makes auto-formatting nicer for build methods.
  // body: GridView(
  //   gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
  //     crossAxisCount: 4,
  //   ),
  //   children: [
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       decoration: const BoxDecoration(
  //         color: Colors.red,
  //         image: DecorationImage(
  //           image: AssetImage("minion.png"),
  //         ),
  //       ),
  //     ),
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.blue,
  //     ),
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.black,
  //       child: Image.network("https://picsum.photos/id/200"),
  //     ),
  //     Container(
  //       width: 100,
  //       height: 250,
  //       margin: const EdgeInsets.only(bottom: 10),
  //       color: Colors.yellow,
  //     ),
  //   ],
}
