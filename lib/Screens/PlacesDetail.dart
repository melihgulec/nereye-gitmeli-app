import 'package:flutter/material.dart';
import 'package:nereye_gitmeli_app/Classes/Places/Places.dart';
import 'package:nereye_gitmeli_app/Classes/Sehir/Sehir.dart';
import 'package:nereye_gitmeli_app/Components/ContainerWithTitle.dart';
import 'package:nereye_gitmeli_app/Components/PlacesCard.dart';
import 'package:url_launcher/url_launcher.dart';

class PlacesDetail extends StatefulWidget {
  Places yerData;
  Sehir sehirData;

  PlacesDetail({this.yerData, this.sehirData});

  @override
  _PlacesDetailState createState() => _PlacesDetailState();
}

class _PlacesDetailState extends State<PlacesDetail> {
  void _launchMapsUrl(String addr) async {
    final url =
        'https://www.google.com/maps/search/${addr.replaceAll(' ', '+')}/';
    await launch(url);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Yer: ${widget.yerData.adi}/${widget.sehirData.adi}'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Column(
            children: [
              Row(
                children: [
                  Container(
                    child: PlacesCard(
                      sehirData: widget.sehirData,
                      placeData: widget.yerData,
                      haveText: false,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      child: Text(
                        '${widget.yerData.adi}\n\n${widget.sehirData.adi}',
                        style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Card(
                color: Theme.of(context).primaryColor,
                child: ListTile(
                  leading: Icon(
                    Icons.map,
                    color: Colors.white,
                  ),
                  trailing: Icon(
                    Icons.chevron_right,
                    color: Colors.white,
                  ),
                  title: Text(
                    'Haritada göster',
                    style: TextStyle(color: Colors.white),
                  ),
                  onTap: () {
                    _launchMapsUrl(widget.yerData.adi);
                  },
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ContainerWithTitle(
                title: '${widget.yerData.adi} Hakkında',
                titleSize: 15,
                widget: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: double.infinity,
                    child: Text('${widget.yerData.aciklama}'),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
