import 'package:church_app/pages/pages.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: const MyBottomNavigation(),
      // BottomNavigationBar(
      //     items: const [
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.home_rounded),
      //         label: 'Home',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.people),
      //         label: 'Community',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.add),
      //         label: 'Add',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.message_rounded),
      //         label: 'Chat',
      //       ),
      //       BottomNavigationBarItem(
      //         icon: Icon(Icons.person_2_rounded),
      //         label: 'Profile',
      //       ),
      //     ],
      //     currentIndex: currentIndex,
      //     onTap: (index) {
      //       setState(() {
      //         currentIndex = index;
      //       });
      //     },
      //     fixedColor: Colors.white,
      //     type: BottomNavigationBarType.fixed,
      //     backgroundColor: Colors.blue),
    );
  }

  final pages = const [
    HomePage(),
    Center(
      child: Text('Community page'),
    ),
    Center(
      child: Text('Add post page'),
    ),
    EditProfile(),
    ProfilePage(),
  ];
}

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => MyBottomNavigationState();
}

class MyBottomNavigationState extends State<MyBottomNavigation> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 5, right: 5),
      height: 87,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            top: 17,
            child: Container(
              height: 60,
              decoration: const BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.all(
                  Radius.circular(20),
                ),
              ),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              width: 64,
              height: 64,
              decoration: BoxDecoration(
                color: Colors.amber[800],
                shape: BoxShape.circle,
              ),
            ),
          )
        ],
      ),
    );
  }
}
