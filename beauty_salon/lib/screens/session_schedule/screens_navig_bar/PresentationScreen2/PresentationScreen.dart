import 'package:beauty_salon/Api.dart';
import 'package:beauty_salon/config.dart';
import 'package:beauty_salon/tools/HumanData.dart';
import 'package:beauty_salon/tools/Services.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class PresentationScreen extends StatefulWidget {
  const PresentationScreen({
    Key? key,
    required this.services,
  }) : super(key: key);

  final List<Services> services;

  @override
  State<PresentationScreen> createState() => _PresentationScreenState();
}

class _PresentationScreenState extends State<PresentationScreen> {

  final _searchEdit = TextEditingController();

  bool _isSearch = true;

  String _searchText = "";

  List<Services> services = [];

  List<String> _searchListItems = [];

  _PresentationScreenState() {
    _searchEdit.addListener(() {
      if (_searchEdit.text.isEmpty) {
        setState(() {
          _isSearch = true;
          _searchText = "";
        });
      } else {
        setState(() {
          _isSearch = false;
          _searchText = _searchEdit.text;
        });
      }
    });
  }

  Widget _searchListView() {
    _searchListItems = <String>[];
    for (int i = 0; i < services.length; i++) {
      var item = services[i].name;

      if (item.toLowerCase().contains(_searchText.toLowerCase())) {
        _searchListItems.add(item);
      }
    }
    return ListView.builder(
      itemCount: _searchListItems.length,
      itemBuilder: (BuildContext context, index) {
        return GestureDetector(
          onTap: () {
            _launchURL();
          },
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                Config.borderRadius,
              ),
            ),
            elevation: 0.1,
            margin:
            const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
            color: Config.whiteColor,
            child: Padding(
              padding: EdgeInsets.all(Config.padding),
              child: Row(
                children: [

                  services[index].format == 'PDF' ?
                  Icon(Icons.picture_as_pdf, color: Colors.orange.shade100, size: 30,) :
                  Icon(Icons.panorama_rounded, color: Colors.blue.shade100, size: 30,),
                  SizedBox(width: Config.padding,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(services[index].name,
                        style: TextStyle(
                          fontSize: Config.verySmallSizeText,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      //SizedBox(height: Config.padding,),
                      Text(services[index].weight.toString() + ' МБ, ' + services[index].format,
                        style: TextStyle(
                          color: Colors.grey, fontSize: Config.verySmallSizeText,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      services = widget.services;
    });
  }

  _launchURL() async {
    const url = '';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
            const SystemUiOverlayStyle(statusBarColor: Config.primaryColor),
        shadowColor: Config.primaryColor,
        elevation: 0,
        backgroundColor: Config.primaryColor,
        centerTitle: true,
        title: Column(
          children: [
            SizedBox(
              height: Config.padding,
            ),
            Text(
              'Презентация',
              style: TextStyle(
                fontSize: Config.bigSizeText,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(80),
          child: Padding(
            padding: EdgeInsets.all(Config.padding - 2),
            child: Column(
              children: [
                SizedBox(
                  height: 40,
                  child: TextFormField(
                    controller: _searchEdit,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: const BorderSide(
                          style: BorderStyle.none,
                          width: 0,
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.borderRadius,
                          ),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(
                            Config.borderRadius,
                          ),
                        ),
                        borderSide:
                            BorderSide(color: Colors.grey.shade300, width: 1.0),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: Config.padding,
                        vertical: Config.padding,
                      ),
                      hintText: 'Поиск',
                      hintStyle: TextStyle(
                          color: Colors.black38,
                          fontSize: Config.smallSizeText),
                      filled: true,
                      fillColor: Colors.grey.shade300,
                      prefixIcon: const Icon(Icons.search),
                    ),
                    style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: Config.bigSizeText,
                    ),
                    cursorColor: Colors.grey,
                    cursorHeight: 25,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      body:
      SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.all(Config.padding),
          child: _isSearch ? ListView.builder(
            itemCount: services.length,
            itemBuilder: (BuildContext context, index) {
              return GestureDetector(
                onTap: () {
                  _launchURL();
                },
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(
                      Config.borderRadius,
                    ),
                  ),
                  elevation: 0.1,
                  margin:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
                  color: Config.whiteColor,
                  child: Padding(
                    padding: EdgeInsets.all(Config.padding),
                    child: Row(
                      children: [

                        services[index].format == 'PDF' ?
                            Icon(Icons.picture_as_pdf, color: Colors.orange.shade100, size: 30,) :
                            Icon(Icons.panorama_rounded, color: Colors.blue.shade100, size: 30,),
                        SizedBox(width: Config.padding,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(services[index].name,
                              style: TextStyle(
                                fontSize: Config.verySmallSizeText,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                            //SizedBox(height: Config.padding,),
                            Text(services[index].weight.toString() + ' МБ, ' + services[index].format,
                              style: TextStyle(
                                color: Colors.grey, fontSize: Config.verySmallSizeText,
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          )
              :
          _searchListView(),
        ),
      ),
    );
  }
}
