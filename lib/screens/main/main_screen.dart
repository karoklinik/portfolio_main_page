import 'package:flutter/material.dart';
import 'package:flutter_profile/constants.dart';
import 'package:flutter_profile/responsive.dart';
import 'components/site_menu.dart';


class MainScreen extends StatelessWidget {
  const MainScreen({Key? key, required this.children}) : super(key: key);

  final List<Widget> children;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Responsive.isDesktop(context)
          ? null
          : AppBar(
                leading: Builder(
                  builder: (context) => IconButton(onPressed: () {
                    Scaffold.of(context).openDrawer();
                  },
                    icon: Icon(Icons.menu),
                  ),
                ),
                backgroundColor: bgColor,
              ),
      drawer: SiteMenu(),
      body: Center(
        child: Container(
        constraints: BoxConstraints(maxHeight: maxWidth),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if(Responsive.isDesktop(context))
          Expanded(
            flex: 2,
            child: SiteMenu(),
          ),
          SizedBox(width: defaultPadding),
          Expanded(
            flex: 7,
            child: SingleChildScrollView(child: Column(
            children: [
              ...children //footer

            ],
            ),
            )
          ),
        ],
      ),
      ),
      ),
    );
  }
}


