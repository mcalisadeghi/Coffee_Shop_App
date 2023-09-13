import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
    _tabController.addListener(_handleTavSelection);
    super.initState();
  }

  _handleTavSelection() {
    if (_tabController.indexIsChanging) {
      setState(
        () {},
      );
    }
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 15,
        ),
        child: ListView(
          children: const <Widget>[
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 15,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
