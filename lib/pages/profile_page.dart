import 'package:church_app/pages/pages.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        actions: [
          PopupMenuButton(
            itemBuilder: (context) {
              return [
                PopupMenuItem(
                  child: const Text('Edit'),
                  onTap: () {
                    Navigator.of(context).pushNamed(AppRoutes.editProfile);
                  },
                ),
                const PopupMenuItem(child: Text('Log out')),
              ];
            },
          )
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            ClipRRect(
              borderRadius: const BorderRadius.all(Radius.circular(20)),
              child: Image.asset(
                'assets/images/user1.jpg',
                width: 90,
                height: 90,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              'Yihun Alemayehu',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Text('Student'),
            const SizedBox(
              height: 10,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Text(
                      '841',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Followers')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '101',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Posts')
                  ],
                ),
                Column(
                  children: [
                    Text(
                      '12',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('Following')
                  ],
                ),
              ],
            ),
            const Divider(
              thickness: 1,
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
