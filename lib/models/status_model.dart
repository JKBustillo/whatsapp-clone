import 'package:whatsapp_clone/models/chat_model.dart';

class StatusModel {
  final String imgURL;
  final String name;
  final String time;

  StatusModel({this.imgURL, this.name, this.time});
}

List<StatusModel> status = [
  new StatusModel(
    name: messageData[0].name,
    time: "Hoy, 12:30",
    imgURL: messageData[0].imageURL
  ),
  new StatusModel(
    name: messageData[1].name,
    time: "Hoy, 9:10",
    imgURL: messageData[1].imageURL
  ),
  new StatusModel(
    name: messageData[2].name,
    time: "Hoy, 5:02",
    imgURL: messageData[2].imageURL
  ),
];