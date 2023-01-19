import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/constants.dart';

class HomeProfileTab extends StatefulWidget {
  const HomeProfileTab({super.key});

  @override
  State<HomeProfileTab> createState() => _HomeProfileTabState();
}

class _HomeProfileTabState extends State<HomeProfileTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.black,
        ),
        backgroundColor: background,
        elevation: 0,
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: defaultSpacing),
            child: Icon(
              Icons.settings,
              color: Colors.grey,
            ),
          )
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(defaultSpacing),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: defaultRadius,
              ),
              Expanded(
                flex: 1,
                child: Center(
                  child: Column(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.all(
                            Radius.circular(defaultSpacing)),
                        child: Image.asset(
                          'assets/images/avatar.jpeg',
                          width: 100,
                        ),
                      ),
                      const SizedBox(
                        height: defaultSpacing / 2,
                      ),
                      Text(
                        'Jacob Timberline',
                        style: Theme.of(context).textTheme.subtitle1?.copyWith(
                            fontWeight: FontWeight.w700, color: Colors.black),
                      ),
                      Text(
                        'jacobtimberlan@gmail.com',
                        style: Theme.of(context)
                            .textTheme
                            .bodyText2
                            ?.copyWith(color: Colors.grey),
                      ),
                      const Chip(
                        backgroundColor: primaryLight,
                        label: Text('Edit Profile'),
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Column(
                  children: [
                    Text(
                      'General',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700, color: Colors.black),
                    ),
                    const ProfileAccountInfoTile(
                        title: 'Bank Location',
                        subTitle: '7307 Grand Avenue, Flushing NYC3293',
                        imageUrl: 'assets/icons/location-1.png')
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class ProfileAccountInfoTile extends StatelessWidget {
  final String title;
  final String subTitle;
  final String imageUrl;

  const ProfileAccountInfoTile(
      {super.key,
      required this.title,
      required this.subTitle,
      required this.imageUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListTile(
        leading: Image.asset(imageUrl),
        title: Text(
          title,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.black),
        ),
        subtitle: Text(
          subTitle,
          style: Theme.of(context)
              .textTheme
              .subtitle2
              ?.copyWith(color: Colors.grey),
        ),
        trailing: const Icon(Icons.keyboard_arrow_right),
      ),
    );
  }
}
