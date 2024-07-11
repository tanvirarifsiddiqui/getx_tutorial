import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Getx Tutorials"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              title: Text("Getx Dialague Alert"),
              subtitle: Text("Getx Dialague Dialague alert twitch"),
              onTap: () {
                Get.defaultDialog(
                    title: "Delete Chat",
                    titlePadding: EdgeInsets.only(top: 20),
                    contentPadding: EdgeInsets.all(20),
                    middleText: "Are you sure you want to delete this Chat?",
                    confirm: TextButton(onPressed: () {
                      Navigator.pop(context);
                    }, child: const Text("Ok")),
                    cancel: TextButton(
                        onPressed: () {
                          Navigator.pop(context);
                        }, child: Text("Cancel")));
              },
            ),
          ),
          Card(
            child: ListTile(
              title: Text("Getx Bottom Sheet"),
              subtitle: Text("Getx Dialague Dialague alert twitch"),
              onTap: () {
                Get.bottomSheet(
                  Container(
                    decoration:  BoxDecoration(
                      color: Colors.greenAccent,
                      borderRadius: BorderRadius.circular(30)
                    ),
                    child: Column(
                      children: [
                        ListTile(
                          leading: Icon(Icons.light_mode),
                          title: Text('Light Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.light());
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.dark_mode),
                          title: Text('Dark Theme'),
                          onTap: (){
                            Get.changeTheme(ThemeData.dark());
                          },
                        )
                      ],
                    ),
                  )
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
