import 'package:flutter/material.dart';
import '../screens/blogs.dart';
import '../screens/resume.dart';
class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: 120,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Color(0xffdddede),
            child: Text(
              'Hussain Almahdi',
              style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 30,
                color: Theme.of(context).primaryColor,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: const Icon(Icons.filter_none),
                title: const Text(
                  "Blogs",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () { Navigator.of(context).pushReplacementNamed(Blogs.routeName);},
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: ListTile(
                leading: const Icon(Icons.folder_shared),
                title: const Text(
                  "Resume",
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                onTap: () { Navigator.of(context).pushReplacementNamed(Resume.routeName);},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
