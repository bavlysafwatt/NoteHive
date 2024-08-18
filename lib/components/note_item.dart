import 'package:flutter/material.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 20,
        left: 16,
      ),
      decoration: BoxDecoration(
        color: Colors.blueGrey.shade400,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Text(
              'Flutter Tips',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.symmetric(vertical: 12.0),
              child: Text(
                'Build you career with Bavly Safwat',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.white.withOpacity(0.7),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.delete_rounded,
                color: Colors.grey.shade200,
                size: 30,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 28.0),
            child: Text(
              'August18, 2024',
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade300,
              ),
            ),
          )
        ],
      ),
    );
  }
}
