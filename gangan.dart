import 'package:app6/Screens/shamath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class gangandis extends StatefulWidget {
  const gangandis({Key? key}) : super(key: key);

  @override
  State<gangandis> createState() => _gangandisState();
}

class _gangandisState extends State<gangandis> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 124, 185, 221),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            onPressed: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => sham())),
          ),
          centerTitle: true,
          title: Text('Ganganghatta'),
          elevation: 0,
        ),
        body: Column(
          children: [
            TabBar(tabs: [
              Tab(
                child: Text(
                  'Info',
                  style: TextStyle(color: Colors.black),
                ),
              ),
              Tab(
                child: Text(
                  'Map',
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ]),
            Expanded(
              child: TabBarView(children: [
                SingleChildScrollView(
                  child: Container(
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                              color: Color.fromARGB(255, 246, 244, 243),
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(12),
                                  bottomRight: Radius.circular(12))),
                          child: Container(
                            height: 500,
                            child: ClipRRect(
                              borderRadius: BorderRadius.only(
                                  bottomLeft: Radius.circular(22),
                                  bottomRight: Radius.circular(22)),
                              child: Image.asset(
                                'assets/images/ghattaa.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(20.0),
                          child: Text(
                            'Info',
                            style: TextStyle(
                                fontSize: 38, fontFamily: 'PTSansNarrow'),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(26.0),
                          child: Text(
                            'Ganganghatta is located around 15kms from namma Tiptaturu which is a getway not only on weekends but also on weekdays!\n It is a water body that has continous flow of water and exceptionally beautiful during monsoon as the water overflows to youre delight\n The rocks , the sunset, the calmness would make u wanna visit again! The destination and journey both are absolutely beautiful',
                            style: TextStyle(fontSize: 16),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Container(
                  child: GoogleMap(
                    initialCameraPosition: CameraPosition(
                        target: LatLng(13.162550, 76.460869), zoom: 15),
                    markers: {
                      Marker(
                          markerId: MarkerId('Here'),
                          draggable: false,
                          position: LatLng(13.162550, 76.460869))
                    },
                  ),
                ),
              ]),
            )
          ],
        ),
        bottomNavigationBar: Container(
          padding: EdgeInsets.all(12),
          height: 50,
          color: Color.fromARGB(255, 154, 156, 156),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Copyright (c) Qwentech/Prajj 2023',
                style:
                    TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
