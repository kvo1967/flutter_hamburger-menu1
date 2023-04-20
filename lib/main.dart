import 'package:flutter/material.dart';
import 'package:hamburger_menu_example/dashboard.dart';
import 'my_header_drawer.dart';
import 'my_drawer_list.dart';
import 'enums.dart';
import 'games_page.dart';
import 'players_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentPage = DrawerSections.dashboard;

  @override
  Widget build(BuildContext context) {
    Widget containerPage = const DashboardPage();

    if (currentPage == DrawerSections.dashboard) {
      containerPage = const DashboardPage();
    } else if (currentPage == DrawerSections.games) {
      containerPage = const GamesPage();
    } else if (currentPage == DrawerSections.players) {
      containerPage = const PlayersPage();
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const Text('Van Alkmaar de Victorie'),
            Image.asset(
              'assets/images/alkmaar_vlag.jpg',
              height: 30,
            ),
          ],
        ),
      ),
      body: containerPage,
      drawer: Drawer(
        child: SingleChildScrollView(
          //controller: controller,
          child: Column(
            children:  [
              const MyHeaderDrawer(),
              MyDrawerList(widget.key, currentPage),
            ],
          ),
        ),
      ),
    );
  }
}

// // Widget myDrawerList(BuildContext context) { 

// //   return Container(
// //     padding: const EdgeInsets.only(
// //       top: 15,
// //     ),
// //     child: Column(
// //       children: [
// //         menuItem(context, 1, 'Dashboard', Icons.dashboard_outlined, currentPage == DrawerSections.dashboard ? true : false),
// //         //menuItem(1, 'Games', Icons.border_horizontal_outlined, currentPage == DrawerSections.dashboard ? true : false),
// //         menuItem(context, 2, 'Games', Icons.sports_soccer_outlined, currentPage == DrawerSections.games ? true : false),
// //         menuItem(context, 3, 'Players', Icons.person_outlined, currentPage == DrawerSections.players ? true : false),
// //         const Divider(),
// //         menuItem(context, 4, 'Seasons', Icons.checklist_outlined, currentPage == DrawerSections.seasons ? true : false),
// //         menuItem(context, 5, 'Silverware', Icons.blender_outlined, currentPage == DrawerSections.silverware ? true : false),
// //         menuItem(context, 6, 'Stats', Icons.checklist_outlined, currentPage == DrawerSections.stats ? true : false),
// //       ],
// //     ),
// //   );
// // }

// // StatefulWidget menuItem(BuildContext context, int id, String title, IconData icon, bool selected) {
// //   return Material(
// //     color: selected ? Colors.grey[300] : Colors.transparent,
// //     child: InkWell(
// //       onTap: () {                
        // setState(() {
        //     if (id == 1){
        //       currentPage = DrawerSections.dashboard;
        //     } 
        //     else if (id == 2) {
        //       currentPage = DrawerSections.games;
        //     }
        //     else if (id == 3) {
        //       currentPage = DrawerSections.players;
        //     }
        // }
        // );
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

