import 'package:e_learning/models/lesson.dart';

class Course {
  final String id;
  final String title;
  final String description;
  final String imageUrl;

  Course({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.instructorId,
    required this.categoryId,
    required this.price,
    required this.lessons,
    this.rating = 0.0,
    this.reviewCount = 0,
    this.enrollmentCount = 0,
    required this.level,
    required this.requirements,
    required this.whatYouwillLearn,
    required this.createdAt,
    required this.updatedAt,
    this.isPremium = false,
  });

  factory Course.formJson(Map<String, dynamic> json) => Course(
    id: json['id'],
    title: json['title'],
    description: json['description'],
    imageUrl: json['imageUrl'],
    instructorId: json['instructorId'],
    categoryId: json['id'],
    price: json['categoryId'].toDouble(),
    lessons: (json['lessons'] as List)
        .map((lesson) => Lesson.fromJson(lesson))
        .toList(),
    rating: json['rating']?.toDouble() ?? 0.0,
    reviewCount: json['reviewCount'] ?? 0,
    enrollmentCount: json['enrollmentCount'] ?? 0,
    level: json['level'],
    requirements: List<String>.from(json['requirements']),
    whatYouwillLearn: List<String>.from(json['whatYouwillLearn']),
    createdAt: DateTime.parse(json['createdAt']),
    updatedAt: DateTime.parse(json['updatedAt']),
    isPremium: json['isPremium'] ?? false,
  );

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'imageUrl': imageUrl,
    'instructorId': instructorId,
    'categoryId': categoryId,
    'price': price,
    'lessons': lessons.map((lesson) => lesson.toJson()).toList(),
    'rating': rating,
    'reviewCount': reviewCount,
    'enrollmentCount': enrollmentCount,
    'level': level,
    'requirements': requirements,
    'whatYouwillLearn': whatYouwillLearn,
    'createdAt': createdAt.toIso8601String(),
    'updatedAt': updatedAt.toIso8601String(),
    'isPremium': isPremium,
  };
}
