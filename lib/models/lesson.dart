class Lesson {
  final String id;
  final String title;
  final String description;
  final String videoUrl;
  final int duration;
  final List<Resource> resources;
  final bool isPreview;
  final bool isCompleted;
  final bool isLocked;

  Lesson({
    required this.id,
    required this.title,
    required this.description,
    required this.videoUrl,
    required this.duration,
    required this.resources,
    this.isPreview = false,
    this.isCompleted = false,
    this.isLocked = true,
  });

  Lesson copyWith({
    String? id,
    String? title,
    String? description,
    String? videoUrl,
    int? duration,
    List<Resource>? resources,
    bool? isPreview,
    bool? isLocked,
    bool? isCompleted,
  }) {
    return Lesson(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      videoUrl: videoUrl ?? this.videoUrl,
      duration: duration ?? this.duration,
      resources: resources ?? this.resources,
      isPreview: isPreview ?? this.isPreview,
      isCompleted: isCompleted ?? this.isCompleted,
      isLocked: isLocked ?? this.isLocked,
    );
  }

  factory Lesson.fromJson(Map<String, dynamic> json) {
    return Lesson(
      id: json['id'],
      title: json['title'],
      description: json['description'],
      videoUrl: json['videoUrl'],
      duration: json['duration'],
      resources: (json['resources'] as List)
          .map((resource) => Resource.fromJson(resource))
          .toList(),
      isPreview: json['isPreview'] ?? false,
      isCompleted: json['isCompleted'] ?? false,
      isLocked: json['isLocked'] ?? true,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'description': description,
    'videoUrl': videoUrl,
    'duration': duration,
    'resources': resources.map((resource) => resource.toJson()).toList(),
    'isPreview': isPreview,
    'isLocked': isLocked,
    'isCompleted': isCompleted,
  };

  String get videoStreamUrl {
    return videoUrl;
  }
}

class Resource {
  final String id;
  final String title;
  final String type;
  final String url;

  Resource({
    required this.id,
    required this.title,
    required this.type,
    required this.url,
  });

  factory Resource.fromJson(Map<String, dynamic> json) {
    return Resource(
      id: json['id'],
      title: json['title'],
      type: json['type'],
      url: json['url'],
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'type': type,
    'url': url,
  };
}
