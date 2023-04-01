import 'package:flutter/material.dart';

class ProfileUI extends StatelessWidget {
  const ProfileUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          clipBehavior: Clip.none,
          alignment: Alignment.center,
          children: [
            Image(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              fit: BoxFit.cover,
              image: const NetworkImage(
                  'https://images.unsplash.com/photo-1585409677983-0f6c41ca9c3b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1169&q=80'),
            ),
            const Positioned(
              bottom: -50.0,
              child: CircleAvatar(
                radius: 70,
                backgroundColor: Colors.white,
                backgroundImage: NetworkImage(
                  'https://imgs.search.brave.com/yuorNca_prFqv6SbSePKthIcuJbdb84O_U5Agutwlgg/rs:fit:1080:1080:1/g:ce/aHR0cHM6Ly9hdmF0/YXJmaWxlcy5hbHBo/YWNvZGVycy5jb20v/MjE2L3RodW1iLTE5/MjAtMjE2Mjg2LnBu/Zw',
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 40),
        const ListTile(
          title: Center(child: Text('Eren Yeager')),
          subtitle: Center(child: Text('Mobile Developer')),
        ),
        ElevatedButton.icon(
          onPressed: () {
            const snackBar = SnackBar(
              content: Text('Fitur sedang dalam perbaikan!'),
            );

            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          icon: const Icon(Icons.mail),
          label: const Text(
            'Hire Me',
            style: TextStyle(color: Colors.white),
          ),
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blueAccent,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
          ),
        ),
        const ListTile(
          title: Text('About Me'),
          subtitle: Text(
            'I am a final semester student at Global Institute, starting to look for a role in the Information Technology world as a web developer and have an interest in working in this position.',
          ),
        )
      ],
    );
  }
}
