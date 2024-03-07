import 'package:belanja/models/item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:path/path.dart';

class itemPage extends StatelessWidget {
  final Item;
  const itemPage({Key? key, this.Item}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 93, 148, 192), 
        title: const Text('Shopping List'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Image.network(
                  Item.image,
                  width: 2000,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20,),
                  Text(Item.name,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold),),
                  SizedBox(height: 20,),
                  Row(
                    children: [
                      Icon(Icons.attach_money),
Text(Item.price.toString(),style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(Item.description,
                  style: TextStyle(
                  fontSize: 13,
                  ),
             ),
             SizedBox(height: 20,),
          Container(
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: Color.fromARGB(255, 228, 228, 228)
            ),
            child: Text('Coffee is a best drink who can calm yourself down, BUT that doesnt mean you can drink it all the time.', style: TextStyle(color: const Color.fromARGB(255, 143, 143, 143)),),
          ),
            ],
        ),
        ),
    );
  }
  
}