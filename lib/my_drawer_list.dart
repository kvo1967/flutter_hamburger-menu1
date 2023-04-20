import 'package:flutter/material.dart';
import 'my_menu_item.dart';
import 'enums.dart';

class MyDrawerList extends StatefulWidget {
  final DrawerSections currentPage;

  const MyDrawerList(Key? key, this.currentPage) : super(key: key);

  @override
  State<MyDrawerList> createState() => _MyDrawerListState();
}

class _MyDrawerListState extends State<MyDrawerList> {
  @override
  Widget build(BuildContext context) {
     return Container(
    padding: const EdgeInsets.only(
      top: 15,
    ),
    child: Column(
      children: [
        MyMenuItem(widget.key,  1, 'Dashboard', Icons.dashboard_outlined, widget.currentPage == DrawerSections.dashboard ? true : false),
        //menuItem(1, 'Games', Icons.border_horizontal_outlined, currentPage == DrawerSections.dashboard ? true : false),
        MyMenuItem(widget.key,  2, 'Games', Icons.sports_soccer_outlined, widget.currentPage == DrawerSections.games ? true : false),
        MyMenuItem(widget.key,  3, 'Players', Icons.person_outlined, widget.currentPage == DrawerSections.players ? true : false),
        const Divider(),
        MyMenuItem(widget.key,  4, 'Seasons', Icons.checklist_outlined, widget.currentPage == DrawerSections.seasons ? true : false),
        MyMenuItem(widget.key,  5, 'Silverware', Icons.blender_outlined, widget.currentPage == DrawerSections.silverware ? true : false),
        MyMenuItem(widget.key,  6, 'Stats', Icons.checklist_outlined, widget.currentPage == DrawerSections.stats ? true : false),
        //menuItem(context, 6, 'Statistics', Icons.checklist_outlined, currentPage == DrawerSections.stats ? true : false),
      ],
    ),
  );
  }
}


// StatefulWidget menuItem(BuildContext context, int id, String title, IconData icon, bool selected) {
//   return Material(
//     color: selected ? Colors.grey[300] : Colors.transparent,
//     child: InkWell(
//       onTap: () {                
//         // setState(() {
//         //     if (id == 1){
//         //       currentPage = DrawerSections.dashboard;
//         //     } 
//         //     else if (id == 2) {
//         //       currentPage = DrawerSections.games;
//         //     }
//         //     else if (id == 3) {
//         //       currentPage = DrawerSections.players;
//         //     }
//         // }
//         // );
//         Navigator.pop(context);                        
//       },
//       child: Padding(
//         padding: const EdgeInsets.all(15.0),
//         child: Row(
//           children: [
//             Expanded(
//               child: Icon(icon, size: 20, color: Colors.black),
//             ),
//             Expanded(
//               flex: 3,
//               child: Text(
//                 title,
//                 style: const TextStyle(color: Colors.black, fontSize: 16),
//               ),
//             ),
//           ],
//         ),
//       ),
//     ),
//   );
// }
