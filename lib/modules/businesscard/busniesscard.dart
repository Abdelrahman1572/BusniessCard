import 'package:app/shared/styles/icon_broken.dart';
import 'package:flutter/material.dart';
import 'package:sign_in_button/sign_in_button.dart';

class BusniessCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title:
            const Text('Business Card', style: TextStyle(color: Colors.white)),
        centerTitle: true,
        flexibleSpace: Container(
          color: Colors.blueGrey,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(17),
        child: Container(
          width: double.infinity,
          height: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 80,
                backgroundImage: AssetImage('assets/images/Abdelrahman.jpeg'),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: ListTile(
                  leading: Icon(IconBroken.Profile),
                  title: Text('Abdelrahman Ashraf'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: ListTile(
                  leading: Icon(IconBroken.Work),
                  title: Text('Flutter Developer'),
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Card(
                child: ListTile(
                  leading: Icon(IconBroken.Call),
                  title: Text('01016369375'),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: SignInButton(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      Buttons.google,
                      onPressed: () {
                        _showButtonPressDialog(context, 'Google');
                      },
                    ),
                  ),
                  SizedBox(
                    width: 4,
                  ),
                  Expanded(
                    child: SignInButton(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)),
                      Buttons.facebookNew,
                      onPressed: () {
                        _showButtonPressDialog(context, 'facebookNew');
                      },
                    ),
                  ),
                  // Expanded(child: child)
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

void _showButtonPressDialog(BuildContext context, String provider) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text('$provider Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 400),
    ),
  );
}
