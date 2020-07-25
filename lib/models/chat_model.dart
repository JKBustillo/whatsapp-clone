class ChatModel {
  final String name;
  String message;
  final String time;
  final String imageURL;

  ChatModel({this.name, this.message, this.time, this.imageURL});
}

List<ChatModel> messageData = [
  new ChatModel(
    name: "Pastorcito Poppip",
    message: "A despestar",
    time: "06:00",
    imageURL: "https://i.pinimg.com/originals/e8/b2/71/e8b271169214323595f5155a649884d2.jpg"
  ),
  new ChatModel(
    name: "Hellen",
    message: "Cabrón!",
    time: "13:02",
    imageURL: "https://i.pinimg.com/originals/5b/0d/00/5b0d009860955095e18ea6dcdd214287.jpg"
  ),
  new ChatModel(
    name: "Kim",
    message: "Chin chon",
    time: "10:0",
    imageURL: "https://i.pinimg.com/originals/ae/ec/c2/aeecc22a67dac7987a80ac0724658493.jpg"
  ),
  new ChatModel(
    name: "Alexandra",
    message: "Hola",
    time: "01:23",
    imageURL: "https://thenewcode.com/assets/images/thumbnails/sarah-parmenter.jpeg"
  ),
  new ChatModel(
    name: "Robert",
    message: "Sup?",
    time: "15:30",
    imageURL: "https://i.pinimg.com/originals/78/07/03/78070395106fcd1c3e66e3b3810568bb.jpg"
  )
];