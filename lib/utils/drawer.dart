import 'package:calculator/screen/page1/page1controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyDrawer extends StatelessWidget {
  final Page1controller page1Controller = Get.find<Page1controller>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Drawer(
        elevation: 5,
        child: Container(
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              UserAccountsDrawerHeader(
                accountName: Text(
                  "Khodal Fashion",
                  style: TextStyle(fontSize: 20),
                ),
                accountEmail: Text("developed by Khunt Jenish"),
                currentAccountPicture: CircleAvatar(
                  child: Text('K'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Card(
                  child: Column(
                    children: [
                      Obx(
                        () => SwitchListTile(
                          title: Text('Dark Mode'),
                          value: page1Controller.isDarkMode.value,
                          onChanged: (bool value) {
                            page1Controller.isDarkMode.value = value;
                            print('darkmode :');
                            print(Get.isDarkMode);
                            if (page1Controller.isDarkMode.value) {
                              Get.changeThemeMode(ThemeMode.dark);
                            } else {
                              Get.changeThemeMode(ThemeMode.light);
                              // Get.changeTheme(ThemeData.dark());
                              print('value is :');
                              print(value);
                            }
                          },
                        ),
                      ),
                      Card(
                        color: Colors.grey[400],
                        child: ListTile(
                          leading: Icon(Icons.person),
                          title: Text("Account"),
                          subtitle: Text("Personal"),
                          trailing: Icon(Icons.edit),
                        ),
                      ),
                      Card(
                        color: Colors.grey[400],
                        child: ListTile(
                            leading: Icon(Icons.email),
                            title: Text("Email"),
                            subtitle: Text(
                              "jenishkhunt27@gmail.com",
                              // style: TextStyle(fontSize: 13),
                            ),
                            trailing: Icon(Icons.send)),
                      ),
                      Card(
                        color: Colors.grey[400],
                        child: ListTile(
                          leading: Icon(Icons.access_time),
                          title: Text("Office Time"),
                          subtitle: Text("9:00am to 6:00pm"),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
