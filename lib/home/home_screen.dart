import 'package:flutter/material.dart';
import 'package:flutter_webgl_error/home/widgets/home_app_bar.dart';
import 'package:flutter_webgl_error/home/widgets/home_body.dart';
import 'package:flutter_webgl_error/home/widgets/user_stories.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late final TextEditingController searchFieldController;

  @override
  void initState() {
    super.initState();
    searchFieldController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          backgroundColor: Theme.of(context).colorScheme.background,
          title: HomeAppBar(searchFieldController: searchFieldController),
          centerTitle: true,
          elevation: 0.5,
          automaticallyImplyLeading: false,
          titleSpacing: 0,
        ),
        backgroundColor: Theme.of(context).colorScheme.background,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              Expanded(
                child: ListView(
                  shrinkWrap: true,
                  children: const <Widget>[UserStories(), HomeBody()],
                ),
              ),
            ],
          ),
        ),
      );
}
