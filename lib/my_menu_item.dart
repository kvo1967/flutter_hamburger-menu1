import 'package:flutter/material.dart';
import 'package:hamburger_menu_example/dashboard.dart';
import 'package:hamburger_menu_example/games_page.dart';
import 'package:hamburger_menu_example/players_page.dart';

class MyMenuItem extends StatefulWidget {
  final int id;
  final bool selected;
  final String title;
  final IconData icon;    

  const MyMenuItem(Key? key, this.id, this.title, this.icon, this.selected)
      : super(key: key);

  @override
  State<MyMenuItem> createState() => _MyMenuItemState();
}

class _MyMenuItemState extends State<MyMenuItem> { 
  @override
  Widget build(BuildContext context) {
    return Material(
      color: widget.selected ? Colors.blue[300] : Colors.transparent,
      child: InkWell(
        onTap: () {
          Navigator.pop(context);
          debugPrint('Id = ${(widget.id)}');          
          //setState(() {
            if (widget.id == 1) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const DashboardPage(),),);
            } else if (widget.id == 2) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const GamesPage(),),);
            } else if (widget.id == 3) {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const PlayersPage(),),);
            }
          //});
        },
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            children: [
              Expanded(
                child: Icon(widget.icon, size: 20, color: Colors.black),
              ),
              Expanded(
                flex: 3,
                child: Text(
                  widget.title,
                  style: const TextStyle(color: Colors.black, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
