import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLinks extends StatelessWidget {

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: 
           AppBar(
            title: 
            const Text(
              '  Flutter Developer Roadmap'),
           ),
           body: SizedBox(
             width: double.infinity,
             child: Column(
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 TextButton(
              onPressed: () async {
                const link = "https://roadmap.sh/";
                launchUrl(
                  Uri.parse(link),
                  mode: LaunchMode.externalNonBrowserApplication
                );
              },
              child: const Text("CREDITS")),
                 TextButton(
              onPressed: () async {
                const link = "https://github.com/Lukazindev";
                launchUrl(
                  Uri.parse(link),
                  mode: LaunchMode.externalNonBrowserApplication
                );
              },
              child: const Text("MY GITHUB")),
               ],
             ),
           ),
       );
  }
}