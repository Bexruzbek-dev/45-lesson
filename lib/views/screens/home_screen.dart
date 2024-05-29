import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:uzgaruvchi/views/widgets/custom_drower.dart';
import 'package:uzgaruvchi/views/widgets/to_do.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedLanduage = "Uz";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: const Text("Home Screen"),
          centerTitle: true,
          actions: [
            Row(
              children: [const Gap(20)],
            ),
          ],
        ),
        drawer: const CustomDrawer(),
        body: ToDO());
  }
}
