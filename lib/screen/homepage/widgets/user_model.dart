class ChatModel {
  final String avatar;
  final String name;
  final String message;

  ChatModel({this.avatar, this.name, this.message});

  static final List<ChatModel> dummyData = [
    ChatModel(
      avatar:
          "https://gnecofarm.org/wp-content/uploads/2015/04/DSCF2559-e1499963910180.jpg",
      name: "Sahadeva",
      message: "Updates on Sahadeva",
    ),
    ChatModel(
      avatar:
          "https://gnecofarm.org/wp-content/uploads/2015/04/DSCF2559-e1499963910180.jpg",
      name: "Gita Nagari",
      message: "Welcome Message",
    ),
  ];
}
