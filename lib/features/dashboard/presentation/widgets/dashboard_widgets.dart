import 'package:flutter/material.dart';
import '../../data/models/dashboard_model.dart';

class DashboardCard extends StatelessWidget {
  final DashboardModel data;

  const DashboardCard({super.key, required this.data});

  @override
  Widget build(BuildContext context) {
    final accentColor = data.isUp ? Colors.green : Colors.red;
    final trendIcon = data.isUp ? Icons.trending_up : Icons.trending_down;
    return Card(
      elevation: 4,
      margin: const EdgeInsets.only(bottom: 15),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: accentColor.withOpacity(0.15),
          child: Icon(trendIcon, color: accentColor),
        ),
        title: Text(data.title),
        subtitle: Text(
          "Total: ${data.value}",
          style: TextStyle(
            color: accentColor,
            fontWeight: FontWeight.bold,
          ),
        ),
        trailing: const Icon(Icons.arrow_forward_ios, size: 16),
      ),
    );
  }
}
