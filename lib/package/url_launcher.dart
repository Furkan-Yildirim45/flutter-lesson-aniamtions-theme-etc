import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

mixin UrlLauncherMixin<T extends StatefulWidget> on State<T>{
  Future<void> launch(String url) async{
    final Uri parseUrl = Uri.parse(url);
    if(!await canLaunchUrl(parseUrl)){
      await launchUrl(parseUrl);
    }
    else{
      throw Exception("Could not launch $parseUrl");
    }
  }
}