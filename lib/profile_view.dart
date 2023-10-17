import 'package:flutter/material.dart';

import 'widgets/custom_char_tile.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    // Scaffold means new Screen create.
    // Its not mandatory for all classes.
    // It use where its need.
    return Scaffold(
      // Appbar use for title.
      // If we not use appbar so body start at the top of mobile screen.
      // appBar: AppBar(
      //   title: const Text("Hello"),
      // ),


      // Body take only one widget.
      // So if take another widget init, so we check in that widget what it take.
      
      // The " SafeArea" use: 
      // Whenever we don't use the appbar so the body start from the top of the screen. 
      // Now there we use the "SafeArea" Widget it start screen after the bar of time, bettary, wifi etc. 
      body: SafeArea(
        child: Column(
          children: [

            // When we use our own custom widget.
            // So it esay to change any thing only one time not change the all over the code.
              CustomChatTile(
                name: "Bilal",
                message: "Hello",
              ),
              
            // Container(
            //   // The "Margin" use for spacing outside the container.
            //   margin: EdgeInsets.only(top: 20),
            //   // The "Padding" use for spacing inside the container.
            //   padding: EdgeInsets.all(20),
            //   color: Colors.red,
            //   child: Text("Hello"),
            //   height: 200,
            //   width: 200,
            // ),

              // Row(
              //   children: [
              //     SizedBox(
              //       width: 10,
              //     ),
              //     CircleAvatar(
              //       backgroundColor: Colors.red,
              //       radius: 25,
              //     ),
              //     SizedBox(
              //       width: 10,
              //     ),
              //     Column(
              //       children: [
              //         Text("Bilal"),
              //         Text("Hello"),
              //       ],
              //     ),
              //     Spacer(),
              //     Text ("9:00 am"),
              //     SizedBox(
              //       width: 10,
              //     ),
              //   ],
              // ),


            // // The "Listile" Widget take width and height depends the content.
            //   ListTile(
            //     tileColor: Colors.green,
            //     leading: CircleAvatar(
            //       radius: 25,
            //       backgroundColor: Colors.red,
            //     ),
            //     title: Text("Bilal Rehman"),
            //     subtitle: Text("Hello"),
            //     trailing: Text("9:00 am"),
            //   ),
            //   SizedBox(height: 2,),
            //   ListTile(
            //     tileColor: Colors.green,
            //     leading: CircleAvatar(
            //       radius: 25,
            //       backgroundColor: Colors.red,
            //     ),
            //     title: Text("Bilal Rehman"),
            //     subtitle: Text("Hello"),
            //     trailing: Text("9:00 am"),
            //   ),
            //   SizedBox(height: 2,),

            // // The "CircleAvatar" is use like we use Container.
            // CircleAvatar(
            //   radius: 50,
            //   backgroundColor: Colors.red,
            // ),
          ],
        ),
      ),
    );
  }
}
