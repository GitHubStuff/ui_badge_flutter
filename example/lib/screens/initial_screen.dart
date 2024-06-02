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
          const Wrap(
            children: [
              UIBadge(value: 9),
              UIBadge(value: 99),
              UIBadge(value: 123),
              UIBadge(value: 1234),
              UIBadge(value: 12345),
              UIBadge(value: 1234567),
              UIBadge(value: 12345678),
              UIBadge(value: 123456789),
              UIBadge(
                value: 8912,
                backgroundColor: Colors.purple,
                textColor: Colors.white,
                borderWidth: 6.0,
                borderColor: Colors.red,
              ),
              UIBadge(
                value: 7,
                backgroundColor: Colors.purple,
                textColor: Colors.white,
                borderWidth: 2.0,
                borderColor: Colors.red,
              ),
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
