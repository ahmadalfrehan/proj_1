import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../Cubits/Cubit.dart';
import '../Cubits/States.dart';
import '../constant.dart';
import '../login/login_screen.dart';
import '../main.dart';

class SettingsS extends StatelessWidget {
  SettingsS({Key? key}) : super(key: key);
  List<Color> colors = [
    Colors.yellowAccent,
    Colors.purpleAccent,
    Colors.limeAccent,
    Colors.pinkAccent,
    Colors.indigoAccent,
    Colors.deepPurple,
    Colors.deepOrangeAccent,
    Colors.amberAccent,
    Colors.orangeAccent,
    Colors.cyanAccent,
    Colors.teal,
    Colors.tealAccent,
    Colors.amber,
    Colors.cyan,
    Colors.red,
    Colors.pink,
    Colors.green,
    Colors.blue,
    Colors.blueGrey,
    Colors.grey,
    Colors.greenAccent,
    Colors.orange,
    Colors.lightBlue,
    Colors.blueAccent,
    Colors.indigo,
    Colors.lightGreen,
    Colors.lightBlueAccent,
    Colors.lightGreenAccent,
    Colors.brown,
    Colors.black,
    Colors.black12,
    Colors.black87,
    Colors.black45,
    Colors.black54,
    Colors.black38,
    Colors.black26,
    Colors.white,
    Colors.white10,
    Colors.white12,
    Colors.white54,
    Colors.white70,
    Colors.white24,
    Colors.white38,
    Colors.white60,
    Colors.white30,
  ];
  var PhoneInvite = TextEditingController();
  var Scaffoldkey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<TourismCubit, Tourism>(
      listener: (context, state) {},
      builder: (context, state) {
        return Scaffold(
          key: Scaffoldkey,
          body: Container(
            color: !isDark ? Color(0xFFECF0F3) : Color(0),
            //color: const Color(0xFFECF0F3),
            child: ListView(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: const Text('Change the font size ?'),
                    onPressed: () {},
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: const Text('Change wallPaper ?'),
                    onPressed: () {
                      var e = AlertDialog(
                        actions: [
                          ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text('cansel'))
                        ],
                        title: Text('Choose Color'),
                        shape: BeveledRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        content: Container(
                          height: MediaQuery.of(context).size.height * 0.5,
                          width: MediaQuery.of(context).size.width * 0.7,
                          child: GridView.builder(
                            gridDelegate:
                                SliverGridDelegateWithMaxCrossAxisExtent(
                              maxCrossAxisExtent: 90,
                              mainAxisSpacing: 5,
                              childAspectRatio: 3 / 2,
                            ),
                            itemCount: colors.length,
                            itemBuilder: (context, index) {
                              return Container(
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.black),
                                    shape: BoxShape.circle),
                                child: InkWell(
                                  onTap: () async {
                                    //         print(colors[index].toString());
                                    //       await Shard.saveData(
                                    //         key: 'ColorWall',
                                    //       value: colors[index].toString());
                                    //     WallPaperColor = Shard.sharedprefrences!
                                    //          .getString('ColorWall');
                                    Navigator.of(context).pop();
                                  },
                                  child: CircleAvatar(
                                    radius: 22,
                                    backgroundColor: colors[index],
                                  ),
                                ),
                              );
                            },
                          ),
                        ),
                      );
                      showDialog(context: context, builder: (context) => e);
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: const Text('Privacy'),
                    onPressed: () {},
                  ),
                ),
                const Divider(),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: Text(isDark ? 'light mode?' : 'dark mode?'),
                    onPressed: () {
                      main();
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: const Text('Contact with us'),
                    onPressed: () {
                      Scaffold.of(context).showBottomSheet(
                        (context) {
                          return Container(
                            color: isDark ? Color(0) : Color(0xFFECF0F3),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Expanded(
                                      child: MaterialButton(
                                        onPressed: () {},
                                        child: Row(
                                          children: const [
                                            Icon(Icons.facebook,
                                                color: Colors.blue),
                                            SizedBox(
                                              width: 40,
                                            ),
                                            Text('facebook')
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
                                          Icon(Icons.email, color: Colors.red),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text('Email')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                Row(
                                  children: [
                                    MaterialButton(
                                      onPressed: () {},
                                      child: Row(
                                        children: const [
                                          Icon(Icons.telegram,
                                              color: Colors.blue),
                                          SizedBox(
                                            width: 40,
                                          ),
                                          Text('Telegram')
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                const Divider(),
                                const SizedBox(height: 40),
                                const Divider(
                                  color: Colors.black,
                                ),
                                const SizedBox(height: 40),
                                Center(
                                  child: InkWell(
                                    onTap: () {},
                                    child: Text(
                                      'check for updates ?',
                                      style: TextStyle(
                                        color: Colors.lightBlue,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w700,
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Color(0xFF84a59d),
                      elevation: 0,
                    ),
                    child: const Text(' invite some one ?'),
                    onPressed: () {
                      Scaffoldkey.currentState!
                          .showBottomSheet(
                            (context) => Scaffold(
                              body: Container(
                                child: Column(
                                  children: [
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(5.0),
                                      child: TextFormField(
                                        controller: PhoneInvite,
                                        decoration: InputDecoration(
                                          label: const Text(
                                              "write the phone number"),
                                          filled: true,
                                          enabled: true,
                                          border: OutlineInputBorder(
                                            borderRadius:
                                                BorderRadius.circular(20.0),
                                          ),
                                        ),
                                        keyboardType: TextInputType.text,
                                        validator: (String? value) {
                                          if (value!.isEmpty) {
                                            return 'the field must not be empty';
                                          }
                                          return null;
                                        },
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {},
                                      child: const Text('invite'),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          )
                          .closed;

                      //
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.red,
                      elevation: 0,
                    ),
                    child: const Text('Delete the account ?'),
                    onPressed: () {
                      //ChatCubit.get(context).makeMessage('+963982867881');
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: isDark ? Colors.grey.shade600 : Colors.white,
                      elevation: 0,
                    ),
                    child: Text('LogOut?',
                        style: TextStyle(
                          color: isDark ? Colors.white : Colors.black,
                        )),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginScreen(),
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
