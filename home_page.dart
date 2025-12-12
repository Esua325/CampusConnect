import 'package:flutter/material.dart';
import 'package:project/second_page.dart';
import 'first_column.dart';
//import 'second_column.dart';
import 'third_column.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              decoration: const BoxDecoration(color: Colors.deepPurple),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Navigation',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                  IconButton(
                    icon: const Icon(Icons.close, color: Colors.white),
                    onPressed: () => Navigator.of(context).pop(),
                  ),
                ],
              ),
            ),
            const ListTile(title: Text('Page 1')),
            const ListTile(title: Text('Page 2')),
            const ListTile(title: Text('Page 3')),
          ],
        ),
      ),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(0),
        child: Container(),
      ),
      body: LayoutBuilder(builder: (context, constraints) {
        double width = constraints.maxWidth;

        bool showHamburger = width >= 750 && width < 1200 || width < 750;

        List<Widget> columns = [];

        // -------------------------------------------
        // NEW RULE: Column 2 (SecondColumn) is FIRST on screens < 795
        // -------------------------------------------
        if (width < 795) {
          columns = [
            SecondColumn(scaffoldKey: _scaffoldKey), // show hamburger here
          ];
        }

        // >= 1200
        else if (width >= 1200) {
          columns = [
            FirstColumn(showHamburger: true, scaffoldKey: _scaffoldKey),
            const SecondColumn(),
            const ThirdColumn(),
          ];
        }
        // 750 - 1199
        else if (width >= 750 && width < 1200) {
          columns = [
            FirstColumn(showHamburger: true, scaffoldKey: _scaffoldKey),
            const SecondColumn(),
          ];
        }

        return Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: columns.map((col) => Expanded(child: col)).toList(),
        );
      }),
    );
  }
}
