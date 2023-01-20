import 'package:flutter/material.dart';
import 'package:money_manager_app/utils/constants.dart';

import '../widget/profileAccountInfoTile.dart';

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
                          width: 120,
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    Text(
                      'General',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: defaultSpacing * 1.2),
                    ),
                    const SizedBox(
                      height: defaultSpacing / 2,
                    ),
                    const ProfileGeneralInfoTile(
                        title: 'Bank Location',
                        subTitle: '7307 Grand Avenue, Flushing NYC3293',
                        imageUrl: 'assets/icons/location-1.png'),
                    const ProfileGeneralInfoTile(
                        title: 'My Wallet',
                        subTitle: 'Manage you saved wallet',
                        imageUrl: 'assets/icons/wallet.png'),

                    const SizedBox(
                      height: defaultSpacing * 1.5,
                    ),
                    Text(
                      'Account',
                      style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: defaultSpacing * 1.2),
                    ),

                    //TODO build account widgets

                    const SizedBox(
                      height: defaultSpacing * 2,
                    ),

                    const ProfileAccountInfoTile(
                        iconUrl: 'assets/icons/user-1.png',
                        heading: 'My Account'),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        iconUrl: 'assets/icons/bell.png',
                        heading: 'Notification'),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        iconUrl: 'assets/icons/lock-on.png',
                        heading: 'Privacy'),
                    const SizedBox(
                      height: defaultSpacing,
                    ),
                    const ProfileAccountInfoTile(
                        iconUrl: 'assets/icons/info-circle.png',
                        heading: 'About'),
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
