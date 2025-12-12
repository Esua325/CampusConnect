import 'package:flutter/material.dart';

class FirstColumn extends StatelessWidget {
  final bool showHamburger;
  final GlobalKey<ScaffoldState>? scaffoldKey;

  const FirstColumn({
    super.key,
    required this.showHamburger,
    required this.scaffoldKey,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xFF151B29),
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(
                top: 100, left: 16, right: 16, bottom: 16),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Set your Profile",
                    style:
                    TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
                  ),
                  const SizedBox(height: 20),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.person,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Profile Info",
                      text: "Edit your personal information"),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.lock,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Security",
                      text: "Update password and security settings"),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.notifications,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Notifications",
                      text: "Set your notification preferences"),
                  _buildProfileCard(
                      color: const Color(0xFF121117),
                      icon: Icons.settings,
                      iconBgColor: const Color(0xFF25252D),
                      title: "Settings",
                      text: "Configure your account settings"),

                  Container(
                    margin: const EdgeInsets.only(top: 16),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color(0xFF252E3F),
                      border: Border.all(color: const Color(0xFF3C4755)),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Row(
                      children: const [
                        Icon(Icons.warning, color: Colors.white),
                        SizedBox(width: 10),
                        Expanded(
                            child: Text(
                              "Please complete your profile to get better recommendations.",
                              style: TextStyle(color: Colors.white),
                            )
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          if (showHamburger)
            Positioned(
              top: 16,
              left: 16,
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white, // <-- set the color here
                ),
                onPressed: () =>
                    scaffoldKey!.currentState!.openDrawer(),
              ),
            ),
        ],
      ),
    );
  }

  Widget _buildProfileCard({
    required Color color,
    required IconData icon,
    required Color iconBgColor,
    required String title,
    required String text,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: const Color(0xFF1F222C)), // <-- added border color
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: iconBgColor,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Icon(icon, size: 32, color: Colors.white),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  text,
                  style: const TextStyle(color: Colors.white),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}