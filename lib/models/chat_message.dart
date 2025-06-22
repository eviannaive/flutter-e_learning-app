class ChatMessage {
  final String id;
  final String senderId;
  final String receiverId;
  final String courseId;
  final String message;
  final DateTime timestemp;
  final bool isRead;

  ChatMessage({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.courseId,
    required this.message,
    required this.timestemp,
    this.isRead = false,
  });

  factory ChatMessage.fromJson(Map<String, dynamic> json) {
    return ChatMessage(
      id: json['id'],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      courseId: json['courseId'],
      message: json['message'],
      timestemp: DateTime.parse(json['timestemp']),
      isRead: json['isRead'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'courseId': courseId,
      'message': message,
      'timestemp': timestemp.toIso8601String(),
      'isRead': isRead,
    };
  }
}
