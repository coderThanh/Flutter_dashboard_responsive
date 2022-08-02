import 'package:flutter/material.dart';

import 'components/header.dart';
import 'components/sidebar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).backgroundColor,
      body: SafeArea(
        child: Row(
          children: [
            const Sidebar(),
            Expanded(
              child: SizedBox(
                height: size.height,
                child: SingleChildScrollView(
                  child: Column(children: [
                    const Header(),
                    const Placeholder(),
                  ]),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
