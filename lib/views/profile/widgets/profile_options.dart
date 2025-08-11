import 'package:e_learning/core/utils/app_dialogs.dart';
import 'package:e_learning/routes/app_routes.dart';
import 'package:e_learning/views/profile/widgets/profile_option_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileOptions extends StatelessWidget {
  const ProfileOptions({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ProfileOptionCard(
          title: 'Profile',
          subtitle: 'Manage your personal information',
          icon: Icons.edit_outlined,
          onTap: () {},
        ),
        ProfileOptionCard(
          title: 'Notifications',
          subtitle: 'Manage your notifications',
          icon: Icons.notifications_outlined,
          onTap: () {},
        ),
        ProfileOptionCard(
          title: 'Settings',
          subtitle: 'App preferences',
          icon: Icons.settings_outlined,
          onTap: () {},
        ),
        ProfileOptionCard(
          title: 'Help & Support',
          subtitle: 'Get help or contact support',
          icon: Icons.help_outline,
          onTap: () {},
        ),
        ProfileOptionCard(
          title: 'Logout',
          subtitle: 'Sign out of our account',
          icon: Icons.logout,
          onTap: () async {
            final confirm = await AppDialogs.showLogoutDialog();
            if (confirm == true) {
              Get.offAllNamed(AppRoutes.login);
            }
          },
          isDestructive: true,
        ),
      ],
    );
  }
}
