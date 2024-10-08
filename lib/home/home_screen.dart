import 'package:flutter/material.dart';
import 'package:todo_app/home/settings/settings_screen/settings_screen.dart';
import 'package:todo_app/home/task_list/task_list_screen/task_list_screen.dart';
import 'package:todo_app/my_theme/my_theme.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "HomeScreen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyTheme.backGroundColor,
      appBar: AppBar(
        title: Text(
          "To Do List",
          style: Theme.of(context)
              .textTheme
              .titleLarge!
              .copyWith(color: MyTheme.whiteColor),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: BottomAppBar(
        notchMargin: 10,
        color: Colors.transparent,
        child: FloatingActionButton(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(32)),
          onPressed: () {},
          child: Icon(
            Icons.add,
            color: MyTheme.whiteColor,
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: EdgeInsets.all(3),
        shape: CircularNotchedRectangle(),
        notchMargin: .5,
        child: BottomNavigationBar(
            currentIndex: selectedIndex,
            onTap: (value) {
              selectedIndex = value;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                  icon: Icon(Icons.list), label: "tasklist"),
              BottomNavigationBarItem(
                  icon: Icon(Icons.settings), label: "settings"),
            ]),
      ),
      body: tabs[selectedIndex],
    );
  }

  List<Widget> tabs = [TaskListScreen(), SettingScreen()];
}
