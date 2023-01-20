import 'package:flutter/material.dart';

import '../utils/constants.dart';

class ProfileGeneralInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  const ProfileGeneralInfoTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Padding(
        padding: const EdgeInsets.only(
            left: defaultSpacing, top: defaultSpacing / 2),
        child: Image.asset(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
      title: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .subtitle2
            ?.copyWith(color: Colors.black),
      ),
      subtitle: Text(
        subTitle,
        style:
            Theme.of(context).textTheme.bodyText2?.copyWith(color: Colors.grey),
      ),
      trailing: const Icon(Icons.keyboard_arrow_right),
    );
  }
}

class ProfileAccountInfoTile extends StatelessWidget {
  final String iconUrl;
  final String heading;

  const ProfileAccountInfoTile(
      {super.key, required this.iconUrl, required this.heading});

  @override
  Widget build(BuildContext context) {
    // ignore: avoid_unnecessary_containers
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Image.asset(iconUrl),
          Padding(
              padding: const EdgeInsets.symmetric(horizontal: defaultSpacing),
              child: Text(heading)),
          const Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(right: defaultSpacing),
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Icon(Icons.keyboard_arrow_right_rounded,
                  color: Colors.grey,)),
            ),
          )
        ],
      ),
    );
  }
}
