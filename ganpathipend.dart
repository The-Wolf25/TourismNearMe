import 'package:app6/Screens/shamath.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ganpen extends StatefulWidget {
  const ganpen({Key? key}) : super(key: key);

  @override
  State<ganpen> createState() => _ganpenState();
}

class _ganpenState extends State<ganpen> {
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
          title: Text('Ganapathi Pendal'),
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
                                'assets/images/bosss.png',
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
                            'Tiptur is famous for the Annual Ganesha Festival. Lord Ganesha is installed. Grand Floral Decorations of Ganesha is made. Different Alankara every day.\n Annadhana (Food Distribution) are done by various Sponsors.Various Cultural Programmes are conducted everyday.\n On the final day, Lord Ganesha is taken in a Big Procession accompanied by Gods of Other Temples.\n The Procession winds up the Streets of Tumkur during entire Night before immersion of Ganesha.Entire Town wears a Festive look during the entire period.\n Previously, all Business Establishments conduct a Lucky Prize Scheme.',
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
                        target: LatLng(13.2582423876763691, 76.47801823110002),
                        zoom: 15),
                    markers: {
                      Marker(
                          markerId: MarkerId('Here'),
                          draggable: false,
                          position:
                              LatLng(13.2582423876763691, 76.47801823110002))
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
                'copyright (c) Qwentech/Prajj 2023',
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
