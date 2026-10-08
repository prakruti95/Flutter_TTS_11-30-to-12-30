import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp>
{
  String _statusMessage = "Click the button to check/request permission";

  int _selectedIndex = 0;
  static List _widgetOptions = [
    Text(
      'Home Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Search Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
    Text(
      'Profile Page',
      style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
    ),
  ];

  @override
  void initState() {
    // TODO: implement initState
    _handleCameraPermission();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(title: Text("Tops Tech")),
        body: Center( child: _widgetOptions.elementAt(_selectedIndex)),
        floatingActionButton: FloatingActionButton(onPressed: ()
        {
          print("clicked");

        },child: Icon(Icons.add),),
        drawer: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(
                accountName: Text("Tops Tech"),
                accountEmail: Text("tops@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                    "https://t4.ftcdn.net/jpg/03/28/49/35/360_F_328493598_yMp446SUpiIGYQQKydLKVo8aoFA7DPJ2.jpg",
                  ),
                  radius: 16.00,
                ),
              ),
              ListTile(
                leading: Icon(Icons.add),
                title: Text("Add"),
                onTap: () {
                  Navigator.of(context).pop();
                },
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.update),
                title: Text("Update"),
                onTap: () {},
              ),
              Divider(),
              ListTile(
                leading: Icon(Icons.delete),
                title: Text("Delete"),
                onTap: () {},
              ),
              Divider(),
            ],
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.twenty_three_mp_outlined),
              label: "A",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.twenty_three_mp_outlined),
              label: "B",
              backgroundColor: Colors.green,
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.twenty_three_mp_outlined),
              label: "C",
              backgroundColor: Colors.green,
            ),
          ],
          type: BottomNavigationBarType.shifting,
          currentIndex: _selectedIndex,
          selectedItemColor: Colors.black,
          iconSize: 40,
          onTap: _onItemTapped,
          elevation: 5,
        ),
      ),
    );
  }

  _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }

  Future<void> _handleCameraPermission() async {
    // 1. Check the current status
    var status = await Permission.camera.status;

    if (status.isGranted) {
      setState(() {
        _statusMessage = "Permission already granted! Opening camera feature...";
      });
      // Proceed with your camera logic here
    }
    else if (status.isDenied) {
      // 2. Request permission if it hasn't been granted or denied permanently yet
      var result = await Permission.camera.request();

      if (result.isGranted) {
        setState(() {
          _statusMessage = "Permission granted by user!";
        });
      } else {
        setState(() {
          _statusMessage = "Permission denied by user.";
        });
      }
    }
    else if (status.isPermanentlyDenied) {
      // 3. The user checked "Don't ask again". Prompt them to open system settings.
      setState(() {
        _statusMessage = "Permission permanently denied. Please enable it in system settings.";
      });

      // Open app settings page automatically
      openAppSettings();
    }
  }

}
