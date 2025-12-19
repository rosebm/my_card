import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50.0,
              child: ClipOval(
                child: SvgPicture.asset(
                  'assets/images/image_profile.svg',
                  fit: BoxFit.contain,
                  width: 120,
                  height: 120,
                ),
              ),
            ),
            const SizedBox(height: 4,),
            Text("Rosalyn B.",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Pacifico'),
            ),
            const SizedBox(height: 4,),
            Text("FLUTTER DEVELOPER",
              style: TextStyle(
                  color: Colors.indigoAccent.shade100,
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'SourceSans3'),
            ),
            Divider(
              indent: 120,
              endIndent: 120,
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.phone,
                  color: Colors.indigoAccent,
                ),
                title: Text('+1 305-123-4567'),
              ),
            ),
            const SizedBox(height: 4,),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
              child: ListTile(
                leading: Icon(
                  Icons.email,
                  color: Colors.indigoAccent,
                ),
                title: Text('rosalyn_b@email.com'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

