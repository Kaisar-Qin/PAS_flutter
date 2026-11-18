import 'package:flutter/material.dart';

class Profilepage extends StatelessWidget {
  const Profilepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profile"),),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 24),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRHpCaYu-fv6aWwXOkJ19eWJh8J6Mx9DrGXKEv3ojKmqw8Cv9pscK-rB-Z5&s=10"),
                ),
                Positioned(
                  bottom:0, 
                  right: 0,
                  child: CircleAvatar(
                    radius: 22,
                    backgroundColor: Colors.green,
                    child: Icon(Icons.camera_alt_outlined, color: Colors.black,),
                  ),
                ),
              ],
            ),
            SizedBox(height: 40,),
            ListTile(
              leading: Icon(Icons.person_outline),
              title: Text("Name"),
              subtitle: Text("Kaisar Deno Ankabut"),
            ),
            ListTile(
              leading: Icon(Icons.info_outline),
              title: Text("Kelas/Absen"),
              subtitle: Text("11 PPLG 1/17",style: TextStyle(color: Colors.green),),
            ),
             ListTile(
              leading: Icon(Icons.alternate_email_outlined),
              title: Text("Bio"),
              subtitle: Text("Siswa PPLG",style: TextStyle(color: Colors.green),),
            ),
          ],
        ),
      ),  
    );
  }
}