import 'package:belanja/models/item.dart';
import 'package:belanja/pages/item_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  final List<Item> items = [
    Item(
      name: 'COLD BREW', 
      price: 25000, 
      description: 'Soothe yourself with some Cold Brew!',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Nitro_Cold_Brew.jpg/330px-Nitro_Cold_Brew.jpg'
      ),
    Item(
      name: 'VIETNAM DRIP',
      price: 18000,
      description: 'Vietnam Drip can help yourself to calm your mind!',
      image: 'https://tse3.mm.bing.net/th?id=OIP.YhyhBwO3gdzwXic6VMp3FQHaHa&pid=Api&P=0&h=180.jpg'
      ),
    Item(
      name: 'CARAMEL MACCHIATO',
      price: 10000,
      description: 'The sweet one!',
      image: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/Macchiato_FourBarrel.jpg/180px-Macchiato_FourBarrel.jpg'
    )
  ];
  HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
        backgroundColor: const Color.fromARGB(255, 93, 148, 192),
        foregroundColor: Colors.white,
      ),
      body: Container(
        margin: EdgeInsets.all(8),
        child: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: items.length,
          itemBuilder: (context, index){
            final Item = items[index];

            return Card(
              child: ListTile(
                leading: CircleAvatar(
                radius: 28,
                backgroundImage: NetworkImage(Item.image),
                ),
                title: Text(Item.name, style: TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(Item.description),
                trailing: Text(Item.price.toString()),

                onTap: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context)=> itemPage(Item:items[index]),
                  ),
                  );
                },
              ),
            );
          }
          ),
        ),
    );
  }

}