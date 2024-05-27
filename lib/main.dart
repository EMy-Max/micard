import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main(){
  runApp(const MiCard());
}

class MiCard extends StatelessWidget {
  const MiCard({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Card(),
    );
  }
}

class Card extends StatelessWidget {
  const Card({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(backgroundColor: Colors.teal,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.white ,
              radius: 60,
              foregroundImage: AssetImage('images/ppics-removebg.png'),
            ),
            const SizedBox(height: 10,),
            const Text(
                'Emediong Udo',
              style: TextStyle(
                fontFamily: 'Pacifico',
                color: Colors.white,
                fontSize: 40,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
                'Flutter Developer',
              style: TextStyle(
                fontFamily: 'SourceSans3',
                color: Colors.teal.shade100,
                fontSize: 20,
                fontWeight: FontWeight.bold,
                letterSpacing: 2.5
              ),
            ),
            const SizedBox(height: 20,),
            const ContactBox2(
              contactIcon: Icons.call,
              contactDesc: '+234 708 953 8873',
            ),
            const SizedBox(height: 10,),
            const ContactBox2(
              contactIcon: Icons.email,
              contactDesc: 'max12udoh@gmail.com',
            ),
          ],
        ),
      ),
    );
  }
}

class ContactBox2 extends StatelessWidget {
  final String contactDesc;
  final IconData contactIcon;
  const ContactBox2({super.key, 
    this.contactDesc = '',
    required this.contactIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(3.0),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 25),

      padding: const EdgeInsets.only(left: 8, top: 4, right: 70, bottom: 4),
      child:  Row(
        children: [
          Icon(
            contactIcon,
            color: Colors.teal,),
          const SizedBox(width: 20,),
          Text(
            contactDesc,
            style: const TextStyle(
              color: Colors.teal,
              fontFamily: 'SourceSans3',
              fontSize: 20.0,

            ),
          )
        ],
      ),
    );
  }
}



