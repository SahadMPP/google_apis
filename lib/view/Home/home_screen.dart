import 'package:flutter/material.dart';
import 'package:google_apis/view/google_assistance/google_assistance.dart';
import 'package:google_apis/view/google_map/google_maps.dart';
import 'package:google_apis/view/google_payment/google_payment.dart';
import 'package:google_apis/view/google_place_piker/google_place_piker.dart';
import 'package:google_apis/view/google_signIn/google_sign.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Google Apis'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          children: [
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              title: const Text("Map"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GoogleMapScreen(),
              )),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              title: const Text("Assist"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GoogleAssistanceScreen(),
              )),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              title: const Text("Place Piking"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GooglePlacePikingScreen(),
              )),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              title: const Text("Sign in"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GoogleSignScreen(),
              )),
            ),
            ListTile(
              contentPadding: const EdgeInsets.all(12),
              title: const Text("Payment"),
              onTap: () => Navigator.of(context).push(MaterialPageRoute(
                builder: (context) => const GooglePaymentScreen(),
              )),
            ),
          ],
        ),
      ),
    );
  }
}
