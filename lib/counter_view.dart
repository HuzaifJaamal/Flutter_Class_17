import 'package:flutter/material.dart';

class CounterView extends StatefulWidget {
  const CounterView({super.key});

  @override
  State<CounterView> createState() => _CounterViewState();
}

class _CounterViewState extends State<CounterView> {

  // This is making the "TextField" controller instant:
  TextEditingController friendListController = TextEditingController();

  TextEditingController updateItemController = TextEditingController();

  int counter = 0;
  
  bool isZero = true;

  changeValue(){
    setState(() {
      isZero = !isZero;
    });
  }

  addvalue(){
    setState(() {
      counter++;
    });
  }

  addItem(){
    setState(() {
      // There is we add into the List by using the "TextField" controller.
      friendList.add(friendListController.text);
      // This is clear the "TextField".
      friendListController.clear();
    });
  }

  updateItem(index){
    // This is save the "friendList" index value into the "updateItemController".
    updateItemController.text = friendList [index];

    // This "showDialog" Popup the Dialog Box.
    showDialog(

      // It is the property of "showDialog" widget.
      // This property give the option to out of the 
      // dialog "click" to dialog box disable or not disable without function complete to disable.
      barrierDismissible: true,
      context: context,
      builder: (context){
        return AlertDialog(
          // In that we take:
          // title, context (body), last one is actions.
          title: Text("Update Value"),
          content: TextField(
            controller: updateItemController,
          ),
          actions: [
            ElevatedButton(
              onPressed: (){
                setState(() {
                  friendList [index] = updateItemController.text;
                });
                updateItemController.clear();
                Navigator.pop(context);
              },
              child: Text("Update"),
              ),
          ],
        );
      },
    );
  }
  
  // In that we make it our own Parameter.
  removeItem({friendListParameter}){
    setState(() {
      // There is we remove from the List by using the parameter.
      friendList.removeAt(friendListParameter);
    });
  }
  List friendList = ["Bilal", "Taber", "Owais", "Ali"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(


      // appBar: AppBar(actions: [
      //   ElevatedButton(onPressed: (){
      //       addItem();
      //   }, 
        
      //   child: Text("Add Item"),
      //   ),
      //   // ElevatedButton(onPressed: (){
      //   //     removeItem();
      //   // },
      //   // child: Text("Remove Item"),
      //   // ),
      // ],

      // // The "TextField" give to input form the key-pad feature.
      // title: TextField(
      //   // For calling the "TextField " controller function by using the controller: then give our controller name. 
      //   controller: friendListController,
        
      // ),
      // ),
      body: SafeArea(

        child: Column(
          children: [
            // Image.network(
            //   "https://images.unsplash.com/photo-1545094729-5e4860fc9452?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1974&q=80",
            
            // ),
            Image.asset("assets/images/car.jpg")
          ],
        ),



          // child: ListView.builder(
          
          //   // Whenever we use "Expanded" widget,
          //   // so don't use "SingleChildScrollView" widget.
          //   // so in that case we don't use "Scrolling" properties in "Column".
          //   // So that why we removes the "shrinkWrap" and "physics" properties. .
                
            
          //   itemCount: friendList.length,
          //   itemBuilder: (context, index){
          //     return Container(
          //       margin: EdgeInsets.only(bottom: 2),
          //       // The "ListTile" Widget take the size 
          //       child: ListTile(
          //         tileColor: Colors.grey,
          //         title: Text(friendList[index]),
          //         trailing:
                    
          //           // The "Wrap" widget auto adject the content in row.
          //           // Although "Wrap" widget is flexible.
          //           // But we define in that content size, 
          //           // so in that exceed than content size,
          //           // so Screen error. 
          //             Wrap(
          //             children: [
          //               IconButton (
          //                 onPressed: (){
          //                   updateItem(index);
          //                 },
          //                 icon: Icon(
          //                   Icons.edit,
          //                   ),
          //               ),
          //               IconButton (
          //                 onPressed: (){
          //                   // We pass the parameter to the repective index.
          //                   removeItem(friendListParameter: index);
          //                 },
          //                 icon: Icon(
          //                   Icons.delete,
          //                   ),
          //               ),
          //             ],
          //           ),
                  
          //       ),
          //     );
          //   }
          // ),
        ),

          

        //   // Whenever we wrap the "ListView" into the "Column", 
        //   //so properties of both are collide,
        //   //so we need to change some properties setting of the "child".
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 200,
        //         color: Colors.red,
        //       ),


        //       Expanded(
        //         child: ListView.builder(
              
        //           // Whenever we use "Expanded" widget,
        //           // so don't use "SingleChildScrollView" widget.
        //           // so in that case we don't use "Scrolling" properties in "Column".
        //           // So that why we removes the "shrinkWrap" and "physics" properties. .
                      
                  
        //           itemCount: friendList.length,
        //           itemBuilder: (context, index){
        //             return Container(
        //               margin: EdgeInsets.only(bottom: 2),
        //               // The "ListTile" Widget take the size 
        //               child: ListTile(
        //                 tileColor: Colors.grey,
        //                 title: Text(friendList[index]),
        //                 trailing: IconButton (
        //                   onPressed: (){
        //                     // We pass the parameter to the repective index.
        //                     removeItem(friendListParameter: index);
        //                   },
        //                   icon: Icon(
        //                     Icons.delete,
        //                     ),
        //                 ),
        //               ),
        //             );
        //           }
        //           ),
        //       ),
        //     ],
        //   ),
        // ),

         
          // child: Column(
          //   children: [

          //     // The Expanded widget give the container to the height of the whole screen.
          //     // Whenever more then one container expanded so it divid into equal ratio.
          //     // In the expanded we don't need to define any size of the container.
          //     Expanded(
          //       // The flex properties give the ratio of the container occupy the space of the screeen.
          //       flex: 2,
          //       child: Container(
          //         color: Colors.red,
          //       ),
          //     ),
          //     Expanded(
          //       child: Container(
          //         color: Colors.yellow,
          //       ),
          //     ),
          //     Container(
          //       height: 100,
          //       color: Colors.green,
          //     )
          //   ],
          // ),





        // // In that case whenever we need the scrolling properties,
        // // so we wrap with the widget of the "SingleChildScrollView".
        // // Whenever we use the "SingleChildScrollView", so in that case we don't use the "Expanded" widget.

        // child: SingleChildScrollView(

        //   // Whenever we wrap the "ListView" into the "Column", 
        //   //so properties of both are collide,
        //   //so we need to change some properties setting of the "child".
        //   child: Column(
        //     children: [
        //       Container(
        //         height: 200,
        //         color: Colors.red,
        //       ),
        //       ListView.builder(
        
        //         // By using "shrinkWrap" ture,
        //         // so it wrap within the Column.
        //         // Now we must change the "Scrolling" properties.
        //         shrinkWrap: true,
        
        //         // Now we change the "Scrolling" properties by using "physics".
        //         physics: NeverScrollableScrollPhysics(),
        
                
        //         itemCount: friendList.length,
        //         itemBuilder: (context, index){
        //           return Container(
        //             margin: EdgeInsets.only(bottom: 2),
        //             // The "ListTile" Widget take the size 
        //             child: ListTile(
        //               tileColor: Colors.grey,
        //               title: Text(friendList[index]),
        //               trailing: IconButton (
        //                 onPressed: (){
        //                   // We pass the parameter to the repective index.
        //                   removeItem(friendListParameter: index);
        //                 },
        //                 icon: Icon(
        //                   Icons.delete,
        //                   ),
        //               ),
        //             ),
        //           );
        //         }
        //         ),
        //     ],
        //   ),
        // ),
        
        
        //  The "ListView" don't wrap with the "Column" because it disable the ListView properties.
        //// The "ListView" has its own scrolling properties.
        // ListView(
        //   children: [
        //     Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //      Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //   ],
        // ),
        
        
        
        
        //  Column(
        //   children: [
        //     Text(
        //       // "Counter Value: $counter",
        //       isZero ? "0" : "1",
        //       style: TextStyle(
        //         fontSize: 40,
        //       ),
        //     ),
        //     ElevatedButton(
        //       onPressed: () {
        //         changeValue();
        //         // addvalue();
        //         // print(counter);
        //       },
        //       child: Text("Add Value"),
        //       ),
        //   ],
        // )
        );
    
  }
}