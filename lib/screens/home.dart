import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  final Function() toggle; // Callback to toggle theme

  const HomeScreen({
    Key? key,
    required this.toggle,
  }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //const HomeScreen({super.key, required Function toggle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('OBOCHO APP'),
        elevation: 56.7,
        actions: [
          GestureDetector(
            onTap: () => widget.toggle(),
            child: Icon(
              Icons.dark_mode,
            ),
          )
        ],
        shadowColor: const Color.fromARGB(255, 164, 255, 61),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
              onPressed: () => Scaffold.of(context).openDrawer(),
              icon: const Icon(Icons.menu));
        }),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              padding: EdgeInsets.zero,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.zero,
                  border: Border.all(width: 2)),
              child: Image.asset(
                'assets/fffff.jpg',
                fit: BoxFit.fill,
              ),
            ),
            ListTile(
              title: const Text('Item 1'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 2'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 3'),
              onTap: () {},
            ),
            ListTile(
              title: const Text('Item 4'),
              onTap: () {},
            )
          ],
        ),
      ),
      body: Center(
          child: Column(
        children: [
          Image.asset(
            'assets/Welcome-Application-Logo.png',
            fit: BoxFit.fill,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SecondScreen(),
                  ));
            },
            child: Text('Go to Second Screen'),
          )
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.cached),
            label: 'Cache',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.open_in_new_rounded),
            label: 'Open Dialog',
          ),
        ],
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Second Screen')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context, 'Data fronm Second Screen');
          },
          child: Text('Go Back'),
        ),
      ),
    );
  }
}
