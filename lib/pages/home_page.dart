import 'package:church_app/pages/pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<String> users = [];

  @override
  Widget build(BuildContext context) {
    mockUsers();
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: const Center(
          child: Text('God church'),
        ),
        leading: const Icon(Icons.menu),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.person_rounded,
              size: 30,
            ),
          ),
        ],
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return PostItem(
              user: users[index],
            );
          },
          itemCount: users.length,
          separatorBuilder: (BuildContext context, int index) {
            return const SizedBox(
              height: 12,
            );
          }),
    );
  }

  mockUsers() {
    for (var i = 0; i < 20; ++i) {
      users.add('User number $i');
    }
  }
}
