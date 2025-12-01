import 'package:flutter/material.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: const BoxDecoration(
        color: Color(0xFF005BC5),
        // borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
      ),
      child: Column(
        children: [
          // Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: const [
          //     Icon(Icons.tiktok, color: Colors.white),
          //     SizedBox(width: 15),
          //     Icon(Icons.camera_alt, color: Colors.white), // untuk IG
          //     SizedBox(width: 15),
          //     Icon(Icons.linked_camera, color: Colors.white), // LinkedIn (mirip)
          //     SizedBox(width: 15),
          //     Icon(Icons.video_library, color: Colors.white), // YouTube
          //   ],
          // ),

          // const SizedBox(height: 15),

          const Text(
            "© GEN-28 PPLG SMK Wikrama",
            style: TextStyle(color: Colors.white, fontSize: 13),
          ),
        ],
      ),
    );
  }
}
