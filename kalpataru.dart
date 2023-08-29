import 'package:app6/Screens/shamath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class Kalp extends StatefulWidget {
  const Kalp({Key? key}) : super(key: key);

  @override
  State<Kalp> createState() => _KalpState();
}

class _KalpState extends State<Kalp> {
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
          title: Text('Kalpataru Grand'),
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
                                'assets/images/gra.png',
                                fit: BoxFit.fill,
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
                            'Tiptur is also known as Kalpataru Nadu because of the market it holds. Thye restarant is in the perfect place to bisit everyday! \n The people here crave for coffee in the morning after thier walking sessions and it usually crowded in the morning.\n The mouth watery food and the ambience is perfectly great here. They also let u host the bday parties',
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
                        target: LatLng(13.263436, 76.450701), zoom: 15),
                    markers: {
                      Marker(
                          markerId: MarkerId('Here'),
                          draggable: false,
                          position: LatLng(13.263436, 76.450701))
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
