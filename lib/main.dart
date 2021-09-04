import 'package:calculator/screen/page1/page1.dart';
import 'package:calculator/screen/page1/page1Binding.dart';
import 'package:calculator/screen/page2/page2.dart';
import 'package:calculator/screen/page2/page2Binding.dart';
import 'package:calculator/utils/appbar.dart';
import 'package:calculator/utils/drawer.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'screen/page1/page1controller.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColorBrightness: Brightness.light,
          brightness: Brightness.light,
          cardColor: Colors.black12,
          primarySwatch: Colors.red,
          scaffoldBackgroundColor: Colors.redAccent[100]),

      darkTheme: ThemeData(
        cardColor: Colors.blueGrey,
        primaryColor: Colors.blueGrey,
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.greenAccent,
        brightness: Brightness.dark,
        iconTheme: IconThemeData(
          color: Colors.grey[500],
        ),
      ),

      // theme: ThemeData(),
      title: 'Design Calc',
      // home: Home(),
      initialRoute: '/home',
      // initialBinding: ,
      // initialBinding: Page1Binding(),
      getPages: [
        GetPage(name: '/home', page: () => Home(), binding: Page1Binding()),
        GetPage(name: '/page1', page: () => Page1(), binding: Page1Binding()),
        GetPage(name: '/page2', page: () => Page2(), binding: Page2Binding()),
      ],
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Page1controller page1Controller = Get.find<Page1controller>();
    GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        key: _scaffoldKey,
        appBar: appbar,
        body: Stack(
          alignment: AlignmentDirectional.bottomCenter,
          children: [
            Container(
              child: PageView(
                controller: page1Controller.controller,
                onPageChanged: (val) {
                  page1Controller.selectedindex.value = val;
                },
                children: [
                  Page1(),
                  Page2(),
                ],
              ),
            ),
            Obx(
              () => CurvedNavigationBar(
                index: page1Controller.selectedindex.value,
                // color: Get.isDarkMode ? Colors.black54 : Color(0xFF00A57D),
                color: Color(0xFF131931),
                backgroundColor: Colors.transparent,
                items: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        Icon(
                          Icons.api_outlined,
                          size: 30,
                          color: Colors.grey[400],
                        ),
                        Text(
                          'Butta',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
                    child: Column(
                      children: [
                        Icon(
                          Icons.aspect_ratio_outlined,
                          size: 30,
                          color: Colors.grey[400],
                        ),
                        Text(
                          'Patta',
                          style: TextStyle(
                            color: Colors.grey[400],
                          ),
                        ),
                      ],
                    ),
                  ),
                  // Icon(Icons.compare_arrows, size: 30),
                ],
                onTap: (index) {
                  page1Controller.selectedindex.value = index;
                  page1Controller.controller.jumpToPage(index);
                },
              ),
            )
          ],
        ),
        drawer: MyDrawer(),
      ),
    );
  }
}
