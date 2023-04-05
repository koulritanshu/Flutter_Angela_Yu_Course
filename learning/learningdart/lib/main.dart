import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

void ifElse() {
  // final name = 'foo';
  // // prefer const
  // const name = 'foo';
  // if (name == 'foo') {
  //   print('Yes this is foo.');
  // } else {
  //   print("I don't know what this is.");
  // }
}

void operators() {
  // var age = 20;
  // final halfOfAge = age / 2; // infix operator
  // print(halfOfAge);
  // final doubleOfAge = age * 2; // infix operator
  // print(doubleOfAge);
  // final ageMinusOne = --age; // prefix operator
  // print(ageMinusOne);
  // print(age);
  // final ageSubOne = age--; // suffix operator
  // print(ageSubOne);
  // print(age);
  // final name = 'Foo';
  // final nameTimes20 = name * 20;
  // print(nameTimes20);
}

void lists() {
  // final names = ['Foo', 'Bar', 'Baz'];
  // final foo = names[0];
  // print(foo);
  // print(names.length);
  // names.add('Name');
  // print(names.length);
}

void sets() {
  // sets are lists of unique things
  // final names = {
  //   'foo',
  //   'bar',
  //   'baz',
  // };
  // names.add('foo');
  // names.add('bar');
  // names.add('baz');
  // print(names);
  // const things = {'foo', 1};
  // things is a set of objects
  // sets make sure that data is not repeated
}

void maps() {
  // Maps are used to hold key-value pairs of information
  // example - Height = 180cm
  // Here, height is key and value is 180cm
  // var person = {
  //   'age': 20,
  //   'name': 'Foo',
  // };
  // maps in flutter are like python dictionaries
  // print(person);
  // person['name'] = 'FooBar';
  // print(person);
  // person['job'] = 'Student';
  // print(person);
}

void nulllsafety() {
  // SOUND NULL SAFETY IN DART
  // String? name = null;
  // print(name);
  // name = 'Foo';
  // print(name);
  // // data type needs to be specified
  // // ? makes the variable nullable
  // int? age = null;
  // if (age == null) {
  //   print("age is null.");
  // }
  // List<String>? names = ['Foo', 'Bar'];
  // names = null;
  // names = ['Foo', 'Bar'];
  // List<String?>? names2 = [null];
  // const String? firstName = null;
  // const String? middleName = 'Bar';
  // const String? lastName = 'Baz';
  // const firstNonNullValue = firstName ?? middleName ?? lastName;
  // print(firstNonNullValue);
  // here ?? acts os or
  // if firstName is null and middleName is not null then it will select middleName
  // ?? is an Infix Operator
  // NULL AWARE ASSIGNMENT OPERATOR
}

void nullawareassignmentoperator(String? firstName, String? lastName) {
  // String? name = firstName;
  // name ??= lastName;
  // print(name);
  // ??= tries to prevent value of variable from becoming zero
  // explanation of above code
  // name is assigned the value of firstName
  // if firstName is null then the value of lastName is stored in it
}

void condInvocation(List<String>? names) {
  // final int length;
  // length = names?.length ?? 0;
  // print(length);
}

// ENUMERATIONS ARE NAMED LISTS OF RELATED TIMES

enum AnimalType { cat, dog, bunny }
// we usually use switch case with enumerations

void test(AnimalType animalType) {
  switch (animalType) {
    case AnimalType.dog:
      print("Dog");
      break;
    case AnimalType.bunny:
      print("Bunny");
      break;
    case AnimalType.cat:
      print("Cat");
  }
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    test(AnimalType.cat);
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: Text(widget.title),
      ),
      body: Center(
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(
          // Column is also a layout widget. It takes a list of children and
          // arranges them vertically. By default, it sizes itself to fit its
          // children horizontally, and tries to be as tall as its parent.
          //
          // Invoke "debug painting" (press "p" in the console, choose the
          // "Toggle Debug Paint" action from the Flutter Inspector in Android
          // Studio, or the "Toggle Debug Paint" command in Visual Studio Code)
          // to see the wireframe for each widget.
          //
          // Column has various properties to control how it sizes itself and
          // how it positions its children. Here we use mainAxisAlignment to
          // center the children vertically; the main axis here is the vertical
          // axis because Columns are vertical (the cross axis would be
          // horizontal).
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
