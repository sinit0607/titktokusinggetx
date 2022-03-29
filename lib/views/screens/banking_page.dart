import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bankingpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Tiktok banking facility"),
      centerTitle: true,),
        body:Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20,top: 20),
          child: Row(
            children: [
              const CircleAvatar(
                radius: 50,
                  backgroundColor: Colors.white,
              backgroundImage: NetworkImage('https://i.pinimg.com/736x/0a/53/c3/0a53c3bbe2f56a1ddac34ea04a26be98.jpg')),

              const SizedBox(
                width: 20,
              ),

              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hi',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  Text('Mona Ann',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.w100),),
                ],
              ),
            ],
          ),
        ),
        SizedBox(
          width: 30,
        ),

        Text('Welcome to',style: TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w100),),
        Text('Bank of America',style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),

        Padding(
          padding: EdgeInsets.only(left: 20,top: 5,right: 20,bottom: 30),
          child: Container(
            height: 100,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.redAccent,Colors.red]),
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),

            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Total Balance Sheet',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                  SizedBox(
                    height: 10,
                  ),
                  Text('\$ 4.65',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 40),),
                ],
              ),
            ),
          ),
        ),

        Text('Transactions History',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white,fontSize: 18),),

        Expanded(
          child: ListView.builder(

            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: EdgeInsets.only(left: 20,right: 20,top: 10),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(10)),
                    color: Colors.black,
                  ),

                  child: ListTile(
                    title: Text('Transaction $index',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                    subtitle: Text('Complete details about transactions no $index',style: TextStyle(color: Colors.white),),
                    contentPadding: EdgeInsets.only(left: 18,right: 18,bottom: 12),
                  ),
                ),
              );
            },
          ),
        ),
      ],
        )
    );
  }
}
