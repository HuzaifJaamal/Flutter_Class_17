import 'package:flutter/material.dart';

class CustomChatTile extends StatelessWidget {
  // When we make the variable so it must be pass the value in parameters.
  final String name;
  final String message;
  final String? time;
  const CustomChatTile({
    super.key, 
    required this.name, 
    required this.message, 
    this.time,
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 2),
      child: ListTile(
                  tileColor: Colors.green,
                  leading: CircleAvatar(
                    radius: 25,
                    backgroundColor: Colors.red,
                  ),
                  title: Text(name),
                  subtitle: Text(message),
                  trailing: Text(time ?? ""),
                ),
    );
  }
}