import 'package:church_app/pages/pages.dart';

enum Gender { none, male, female }

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  var gender = Gender.none;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Profile'),
        actions: [
          PopupMenuButton(
            itemBuilder: ((context) {
              return [
                PopupMenuItem(child: Text('Save')),
                PopupMenuItem(child: Text('Discard')),
              ];
            }),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            padding: const EdgeInsets.all(20),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(children: [
                    Padding(
                      padding: const EdgeInsets.all(12),
                      child: ClipRRect(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20)),
                        child: Image.asset(
                          'assets/images/user1.jpg',
                          width: 120,
                          height: 120,
                        ),
                      ),
                    ),
                    const Positioned(
                        bottom: 0,
                        right: 0,
                        child: Icon(
                          Icons.camera_alt,
                          size: 30,
                        ))
                  ]),
                  const SizedBox(
                    height: 40,
                  ),
                  MyTextfield(
                      controller: TextEditingController(),
                      hintText: 'First name',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextfield(
                      controller: TextEditingController(),
                      hintText: 'Last name',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextfield(
                      controller: TextEditingController(),
                      hintText: 'Phone number',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  MyTextfield(
                      controller: TextEditingController(),
                      hintText: 'Location',
                      obscureText: false),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      //color: Colors.grey,
                      border: Border.all(style: BorderStyle.solid),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Gender',
                          style: TextStyle(
                            fontSize: 20,
                            color: Colors.grey,
                          ),
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: RadioListTile(
                                  title: const Text('Male'),
                                  value: Gender.male,
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = Gender.male;
                                    });
                                  }),
                            ),
                            Expanded(
                              child: RadioListTile(
                                  title: const Text('Female'),
                                  value: Gender.female,
                                  groupValue: gender,
                                  onChanged: (value) {
                                    setState(() {
                                      gender = Gender.female;
                                    });
                                  }),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
