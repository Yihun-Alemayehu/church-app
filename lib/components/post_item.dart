import 'package:church_app/pages/pages.dart';

class PostItem extends StatelessWidget {
  final String user;
  const PostItem({super.key, required this.user});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Row(
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(20)),
                child: Image.asset(
                  'assets/images/user1.jpg',
                  height: 40,
                  width: 40,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Text(user),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Align(
              alignment: Alignment.centerLeft,
              child: Text('God loves you whatever you do , whoever you are !')),
          const SizedBox(
            height: 5,
          ),
          Image.asset('assets/images/post1.jpg')
        ],
      ),
    );
  }
}
