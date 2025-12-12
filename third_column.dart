import 'package:flutter/material.dart';

class ThirdColumn extends StatelessWidget {
  const ThirdColumn({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.deepPurple.shade100,
      child: Padding(
        padding:
        const EdgeInsets.only(top: 100, left: 16, right: 16, bottom: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Profile Tips",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.purpleAccent),
              ),
              const SizedBox(height: 16),
              _buildTipCard(
                  icon: Icons.person, title: "Tip 1", text: "Keep your info updated"),
              _buildTipCard(
                  icon: Icons.lock, title: "Tip 2", text: "Secure your account"),
              _buildTipCard(
                  icon: Icons.notifications, title: "Tip 3", text: "Enable alerts"),
              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.deepPurple.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const Text(
                      "Profile Benefits",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),
                    _buildBenefitRow(Icons.star, "Get better suggestions"),
                    _buildBenefitRow(Icons.access_time, "Save time"),
                    _buildBenefitRow(Icons.group, "Connect with others"),
                    _buildBenefitRow(Icons.thumb_up, "Gain trust"),
                  ],
                ),
              ),
              const SizedBox(height: 16),

              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.purple.shade200,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.lightbulb, size: 40, color: Colors.deepPurple),
                    SizedBox(height: 8),
                    Text(
                      "Pro Tip",
                      style:
                      TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text(
                      "Completing all profile steps maximizes your visibility and benefits.",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTipCard(
      {required IconData icon, required String title, required String text}) {
    return Container(
      margin: const EdgeInsets.only(bottom: 16),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Icon(icon, size: 32),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(text),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildBenefitRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 8),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}
