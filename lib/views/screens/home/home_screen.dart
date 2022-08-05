import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/body.dart';
import 'components/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion(
      value: SystemUiOverlayStyle.light,
      child: Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: const Body(),
        drawer: const Drawer(child: Sidebar()),
      ),
    );
  }
}
