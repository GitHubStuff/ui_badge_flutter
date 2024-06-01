import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ui_badge/ui_badge.dart';

import '../gen/assets.gen.dart';

class InitialScreen extends StatelessWidget {
  final String title;
  static const String route = '/InitialScreen';

  const InitialScreen({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: homeWidget(context),
      floatingActionButton: null,
    );
  }

  Widget homeWidget(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Wrap(
            children: [
              UIBadge(value: 9, widthCallback: (double width) {}),
              UIBadge(value: 99, widthCallback: (double width) {}),
              UIBadge(value: 999, widthCallback: (double width) {}),
              UIBadge(value: 9999, widthCallback: (double width) {}),
              UIBadge(value: 99999, widthCallback: (double width) {}),
              UIBadge(value: 999999, widthCallback: (double width) {}),
              UIBadge(value: 9999999, widthCallback: (double width) {}),
              UIBadge(value: 9999999, widthCallback: (double width) {}),
            ],
          ),
          GestureDetector(
            onTap: () {
              const snackBar = SnackBar(
                content: Text('🤣 That Tickles!'),
                duration: Duration(milliseconds: 500),
                behavior: SnackBarBehavior.floating,
              );
              ScaffoldMessenger.of(context).showSnackBar(snackBar);
            },
            child: SizedBox(
              width: 100,
              height: 100,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Assets.images.numberbadge1024x1024.image(),
              ),
            ),
          ),
          const Gap(15.0),
        ],
      ),
    );
  }
}
