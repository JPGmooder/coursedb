import 'dart:convert';

class TicketModel {
  int supportRequestId;
  String content;
  DateTime date;
  String? answer;
  String supportStatusName;
  TicketModel({
    required this.supportRequestId,
    required this.content,
    required this.date,
    this.answer,
    required this.supportStatusName,
  });


  TicketModel copyWith({
    int? supportRequestId,
    String? content,
    DateTime? date,
    String? answer,
    String? supportStatusName,
  }) {
    return TicketModel(
      supportRequestId: supportRequestId ?? this.supportRequestId,
      content: content ?? this.content,
      date: date ?? this.date,
      answer: answer ?? this.answer,
      supportStatusName: supportStatusName ?? this.supportStatusName,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'supportRequestId': supportRequestId,
      'content': content,
      'date': date.millisecondsSinceEpoch,
      'answer': answer,
      'supportStatusName': supportStatusName,
    };
  }

  factory TicketModel.fromMap(Map<String, dynamic> map) {
    return TicketModel(
      supportRequestId: map['id_supportrequest']?.toInt() ?? 0,
      content: map['supportrequestcontent'] ?? '',
      date: DateTime.parse(map['supportrequestdate']),
      answer: map['supportrequestanswer'],
      supportStatusName: map['supportrequeststatusname'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory TicketModel.fromJson(String source) => TicketModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'TicketModel(supportRequestId: $supportRequestId, content: $content, date: $date, answer: $answer, supportStatusName: $supportStatusName)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is TicketModel &&
      other.supportRequestId == supportRequestId &&
      other.content == content &&
      other.date == date &&
      other.answer == answer &&
      other.supportStatusName == supportStatusName;
  }

  @override
  int get hashCode {
    return supportRequestId.hashCode ^
      content.hashCode ^
      date.hashCode ^
      answer.hashCode ^
      supportStatusName.hashCode;
  }
}
