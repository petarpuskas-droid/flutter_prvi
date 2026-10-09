import 'package:flutter/material.dart';

import '../models/activity.dart';
import "activity_details_screen.dart";

class ActivityListScreen extends StatefulWidget {
  const ActivityListScreen({super.key});

  @override
  State<ActivityListScreen> createState() => _ActivityListScreenState();
}

class _ActivityListScreenState extends State<ActivityListScreen> {
  final Set<String> joined = {};

  Future<void> openDetails(Activity activity) async {
    final result = await Navigator.push<bool>(
      context,
      MaterialPageRoute(
        builder: (context) => ActivityDetailScreen(
          activity: activity,
          isJoined: joined.contains(activity.name),
        ),
      ),
    );

    if (result != null){
      setState(() {
        joined.add(activity.name);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}

class ActivityTile extends StatelessWidget {
  final Activity activity;
  final bool isJoined;
  final VoidCallback onOpen;

  const ActivityTile({
    super.key,
    required this.activity,
    required this.isJoined,
    required this.onOpen
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      padding: EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(8)
      ),
      child: Row(
        children: [
          Icon(
            activity.icon,
            size: 32,
            color: isJoined ? Colors.green : Colors.grey
          ),
          const SizedBox(width: 12)
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  activity.name,
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  )
                )
              ],

              
            ),
          ),
          IconButton(
            onPressed: onOpen,
            icon: const Icon(Icons.che))
        ],
      ),
    );
  }
}