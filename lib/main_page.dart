import 'package:flutter/material.dart';
import 'package:untitled/package/url_launcher.dart';
import 'package/loading_bar.dart';
import 'package:url_launcher/url_launcher.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with UrlLauncherMixin{
  final String url = "https://www.youtube.com/";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Center",style: Theme.of(context).textTheme.titleLarge,)),
      floatingActionButton: FloatingActionButton(
          backgroundColor: Theme.of(context).floatingActionButtonTheme.backgroundColor,
          onPressed: (){
        launch(url);
      },child: const Text("Tikla")),



      body: SafeArea(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const LoadingBarAnimation(),
          Text("data",style: Theme.of(context).textTheme.titleMedium),
          Checkbox(value: true, onChanged: (val){})
        ],
      ),),
    );
  }
  /*
  Future<void> _launchUrl(String url) async {
    if (!await launchUrl(Uri.parse(url))) {
      throw Exception('Could not launch $url');
    }
  }
   */
}

