// import 'package:flutter/material.dart';
// import 'package:flutter_application_1/main.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Photos
{
  final int albumId;
  final int id;
  final String title;
  final String url;
  final String thumbnailUrl;

  const Photos
  (
    {
      required this.albumId,
      required this.id,
      required this.title,
      required this.url,
      required this.thumbnailUrl
    }
  );

  factory Photos.fromJson(Map<String, dynamic> json)
  {
    return Photos
    (
      albumId: json['albumId'], 
      id: json['id'], 
      title: json['title'], 
      url: json['url'], 
      thumbnailUrl: json['thumbnailUrl']
    );
  }
}

Future<List<Photos>> fetchPhotos() async
{
  final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/photos'));
  if (response.statusCode == 200)
  {
    List<dynamic> _parsedList = jsonDecode(response.body);
    List<Photos> _itemsList = List<Photos>.from
    (
      _parsedList.map<Photos>((dynamic i) => Photos.fromJson(i))
    );
    return _itemsList;
  }
  else
  {
    throw Exception('Nahin chal raha yaaarrrrrrrr');
  }
}

ListView fetchPhotosInList(List<Photos> photos)
{
  return ListView.builder
  (
    itemCount: photos.length,
    itemBuilder: (context, i)
    {

    }
  );
}