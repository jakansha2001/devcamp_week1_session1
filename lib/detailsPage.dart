import 'package:devcamp_session1/models/data.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final Data city;
  const DetailsPage({super.key, required this.city});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}



class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          widget.city.cityName,
        ),
      ),
      body: Column(
        children: [
          /// The source and destination widget should be wrapped with Hero widget. 
          /// Hero widget takes a tag as a parameter which should be unique. 
          /// The source and destination should have the same tag value
          Hero(
            tag: widget.city.cityName, //London
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network(
                  widget.city.cityImage,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              widget.city.cityInfo,
              textAlign: TextAlign.justify,
              style: const TextStyle(
                fontSize: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
