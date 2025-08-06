import 'package:e_learning/models/chat_message.dart';
import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/lesson.dart';
import 'package:e_learning/models/question.dart';
import 'package:e_learning/models/quiz.dart';
import 'package:e_learning/models/quiz_attempt.dart';

class DummyDataService {
  static final List<Course> courses = [
    Course(
      id: '1',
      title: 'Flutter development Bootcamp',
      description:
          'Master Flutter and Dart from scratch. Build real-world cross-platform apps.',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_1',
      categoryId: '1',
      price: 99.99,
      lessons: _createFlutterLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 30)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 245,
      enrollmentCount: 1200,
    ),
    Course(
      id: '2',
      title: 'React Native Development Bootcamp',
      description:
          'Master React Native and JavaScript from scratch. Build real-world cross-platform apps.',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_2',
      categoryId: '2',
      price: 99.99,
      lessons: _createDesignLessons(),
      level: 'Beginner',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 245,
      enrollmentCount: 1200,
    ),
    Course(
      id: '3',
      title: 'UI/UX design Masterclass',
      description:
          'Learn the fundamentals of UI/UX design and master the art of creating intuitive and visually appealing user interfaces.',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_2',
      categoryId: '2',
      price: 99.99,
      lessons: _createDesignLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 245,
      enrollmentCount: 1200,
    ),
    Course(
      id: '4',
      title: 'Digital Marketing Essentials',
      description:
          'Master the fundamentals of digital marketing and learn how to create effective campaigns that drive results.',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_4',
      categoryId: '3',
      price: 79.9,
      lessons: _createDesignLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.8,
      reviewCount: 133,
      enrollmentCount: 600,
    ),
    Course(
      id: '5',
      title: 'English Business Communication',
      description: 'Improve your communication skills in a business context',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_5',
      categoryId: '2',
      price: 69.99,
      lessons: _createDesignLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.4,
      reviewCount: 176,
      enrollmentCount: 720,
    ),
    Course(
      id: '6',
      title: 'Data Science Fundamentals',
      description: 'Learn the basics of data science and machine learning',
      imageUrl: 'https://i.ytimg.com/vi/z9kOcyk5t8s/maxresdefault.jpg',
      instructorId: 'inst_6',
      categoryId: '3',
      price: 159.99,
      lessons: _createDataScienceLessons(),
      level: 'Intermediate',
      requirements: [
        'Basic knowledge of programming concepts',
        'Understanding of object-oriented programming',
        'Experience with version control systems (e.g., Git)',
        'Familiarity with UI/UX design principles',
      ],
      whatYouwillLearn: [
        'Develop responsive and interactive user interfaces',
        'Implement state management patterns',
        'Integrate third-party APIs and services',
        'Optimize app performance and memory usage',
        'Enhance app security and privacy',
      ],
      createdAt: DateTime.now().subtract(const Duration(days: 45)),
      updatedAt: DateTime.now(),
      rating: 4.4,
      reviewCount: 120,
      enrollmentCount: 920,
    ),
  ];

  static final List<Quiz> quizzes = [
    Quiz(
      id: '1',
      title: 'Flutter Basics Quiz',
      description: 'Test your knowledge of Flutter basics',
      timeLimit: 30,
      questions: _createFlutterQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 5)),
      isActive: true,
    ),
    Quiz(
      id: '2',
      title: 'Data Science Fundamentals Quiz',
      description: 'Test your knowledge of data science fundamentals',
      timeLimit: 45,
      questions: _createFlutterQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      isActive: true,
    ),
    Quiz(
      id: '3',
      title: 'Machine Learning Fundamentals Quiz',
      description: 'Test your knowledge of machine learning fundamentals',
      timeLimit: 60,
      questions: _createFlutterQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      isActive: true,
    ),
  ];

  static final List<QuizAttempt> quizAttempts = [];

  static List<Lesson> _createFlutterLessons() {
    return [
      Lesson(
        id: '1',
        title: 'Introduction to Flutter',
        description:
            'This is the description for the Introduction to Flutter lesson.',
        videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        duration: 30,
        resources: _createDummyResources(),
        isPreview: true,
        isLocked: false,
      ),
      _createLesson('2', 'Dart Programming', false, false),
      _createLesson('3', 'Flutter Widgets', false, false),
      _createLesson('4', 'State Management', false, false),
      _createLesson('5', 'Navigation', false, false),
      _createLesson('6', 'Performance Optimization', false, false),
    ];
  }

  static List<Lesson> _createDataScienceLessons() {
    return [
      Lesson(
        id: '1',
        title: 'Introduction to Data Science',
        description:
            'This is the description for the Introduction to Data Science lesson.',
        videoUrl: 'https://www.youtube.com/watch?v=dQw4w9WgXcQ',
        duration: 30,
        resources: _createDummyResources(),
        isPreview: true,
        isLocked: false,
      ),
      _createLesson('2', 'Data Wrangling', false, false),
      _createLesson('3', 'Exploratory Data Analysis', false, false),
      _createLesson('4', 'Machine Learning Basics', false, false),
      _createLesson('5', 'Data Visualization', false, false),
      _createLesson('6', 'Advanced Data Science Techniques', false, false),
    ];
  }

  static List<Lesson> _createDesignLessons() {
    return [
      _createLesson('2', 'UI/UX Design Principles', false, false),
      _createLesson('3', 'Design Patterns', false, false),
      _createLesson('4', 'Responsive Design', false, false),
      _createLesson('5', 'Design Tools', false, false),
      _createLesson('6', 'Design Thinking', false, false),
    ];
  }

  static Lesson _createLesson(
    String id,
    String title,
    bool isPreview,
    bool isCompleted,
  ) {
    return Lesson(
      id: 'lesson_$id',
      title: title,
      description: 'This is the description for the $title',
      videoUrl:
          'https://storage.googleapis.com/gtv-videos-bucket/sample/ForBiggerBlazes.mp4',
      duration: 30,
      resources: _createDummyResources(),
      isPreview: isPreview,
      isLocked: !isPreview,
      isCompleted: isCompleted,
    );
  }

  static List<Resource> _createDummyResources() {
    return [
      Resource(
        id: 'resource_1',
        title: 'Resource 1',
        type: 'pdf',
        url: 'https://example.com/slides.pdf',
      ),
      Resource(
        id: 'resource_2',
        title: 'Resource 2',
        type: 'pdf',
        url: 'https://example.com/slides.pdf',
      ),
    ];
  }

  static Course getCourseById(String id) {
    return courses.firstWhere(
      (course) => course.id == id,
      orElse: () => courses.first,
    );
  }

  static List<Course> getCoursesByCategory(String categoryId) {
    return courses.where((course) => course.categoryId == categoryId).toList();
  }

  static List<Course> getInstructorCourses(String instructorId) {
    return courses
        .where((course) => course.instructorId == instructorId)
        .toList();
  }

  static bool isCourseCompleted(String courseId) {
    final course = getCourseById(courseId);
    return course.lessons.every((lesson) => lesson.isCompleted);
  }

  static List<Question> _createFlutterQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'Where is Flutter?',
        options: [
          Option(id: 'a', text: 'A UI framework for building native apps'),
          Option(id: 'b', text: 'A programming language'),
          Option(id: 'c', text: 'A database management system'),
          Option(id: 'd', text: 'A design tool'),
        ],
        correctOptionId: 'a',
        points: 1,
      ),
      Question(
        id: '1',
        text: 'Where is Flutter?',
        options: [
          Option(id: 'a', text: 'A UI framework for building native apps'),
          Option(id: 'b', text: 'A programming language'),
          Option(id: 'c', text: 'A database management system'),
          Option(id: 'd', text: 'A design tool'),
        ],
        correctOptionId: 'a',
        points: 1,
      ),
    ];
  }

  static List<Question> _createDartQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'Where is Dart?',
        options: [
          Option(id: 'a', text: 'A UI framework for building native apps'),
          Option(id: 'b', text: 'A programming language'),
          Option(id: 'c', text: 'A database management system'),
          Option(id: 'd', text: 'A design tool'),
        ],
        correctOptionId: 'b',
        points: 1,
      ),
      Question(
        id: '2',
        text: 'What is Dart used for?',
        options: [
          Option(id: 'a', text: 'Building mobile apps'),
          Option(id: 'b', text: 'Building web apps'),
          Option(id: 'c', text: 'Building server-side apps'),
          Option(id: 'd', text: 'Building desktop apps'),
        ],
        correctOptionId: 'a',
        points: 1,
      ),
    ];
  }

  static List<Question> _createStateManagementQuizQuestions() {
    return [
      Question(
        id: '1',
        text: 'What is state management?',
        options: [
          Option(id: 'a', text: 'Managing user input'),
          Option(id: 'b', text: 'Managing app state'),
          Option(id: 'c', text: 'Managing database connections'),
          Option(id: 'd', text: 'Managing network requests'),
        ],
        correctOptionId: 'b',
        points: 1,
      ),
      Question(
        id: '2',
        text: 'What is the difference between stateful and stateless widgets?',
        options: [
          Option(
            id: 'a',
            text:
                'Stateful widgets can change their appearance, stateless widgets cannot',
          ),
          Option(
            id: 'b',
            text:
                'Stateful widgets can change their appearance, stateless widgets cannot',
          ),
          Option(
            id: 'c',
            text:
                'Stateful widgets can change their appearance, stateless widgets cannot',
          ),
          Option(
            id: 'd',
            text:
                'Stateful widgets can change their appearance, stateless widgets cannot',
          ),
        ],
        correctOptionId: 'a',
        points: 1,
      ),
    ];
  }

  static Quiz getQuizById(String id) {
    return quizzes.firstWhere(
      (quiz) => quiz.id == id,
      orElse: () => quizzes.first,
    );
  }

  static void saveQuizAttempt(QuizAttempt attempt) {
    quizAttempts.add(attempt);
  }

  static List<QuizAttempt> getQuizAttempts(String userId) {
    return quizAttempts.where((attempt) => attempt.userId == userId).toList();
  }

  static final Set<String> _purchaseCourseIds = {};

  static bool isCourseUnlocked(String courseId) {
    final course = getCourseById(courseId);
    return !course.isPremium || _purchaseCourseIds.contains(courseId);
  }

  static final Map<String, TeacherStats> teacherStats = {
    'inst_1': TeacherStats(
      totalStudents: 1234,
      activeCourses: 8,
      totalRevenue: 123456,
      averageRating: 4.5,
      monthlyEnrollments: [156, 289, 234, 278, 312, 289],
      monthlyRevenue: [12345, 23456, 34567, 45678, 56789, 67890],
      studentEngagement: StudentEngagement(
        averageCompletionRate: 85.2,
        averageTimePerLesson: 45,
        activeStudentsThisWeek: 156,
        courseCompletionRates: {
          'Flutter Development': 90.5,
          'Advanced Flutter': 0.72,
          'Flutter State Management': 0.68,
        },
      ),
    ),
  };

  static final Map<String, List<StudentProgress>> studentProgress = {
    'inst_1': [
      StudentProgress(
        studentId: 'student_1',
        studentName: 'John Smith',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.75,
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
        quizScores: [85, 90, 78],
        completedLessons: 15,
        totalLessons: 20,
        averageTimePerLesson: 45,
      ),
      StudentProgress(
        studentId: 'student_2',
        studentName: 'Emma Wilson',
        courseId: '1',
        courseName: 'Flutter Development Bootcamp',
        progress: 0.75,
        lastActive: DateTime.now().subtract(const Duration(hours: 2)),
        quizScores: [85, 90, 78],
        completedLessons: 15,
        totalLessons: 20,
        averageTimePerLesson: 45,
      ),
    ],
  };

  static TeacherStats getTeacherStats(String instructorId) {
    final instructorCourses = getInstructorCourses(instructorId);
    final stats = teacherStats[instructorId] ?? TeacherStats.empty();
    return TeacherStats(
      totalStudents: instructorCourses.fold(
        0,
        (sum, course) => sum + course.enrollmentCount,
      ),
      activeCourses: instructorCourses.length,
      totalRevenue: instructorCourses.fold(
        0,
        (sum, course) => sum + (course.price * course.enrollmentCount),
      ),
      averageRating: instructorCourses.isEmpty
          ? 0.0
          : instructorCourses.fold(0.0, (sum, course) => sum + course.rating) /
                instructorCourses.length,
      monthlyEnrollments: stats.monthlyEnrollments,
      monthlyRevenue: stats.monthlyRevenue,
      studentEngagement: stats.studentEngagement,
    );
  }

  static List<StudentProgress> getStudentProgress(String instructorId) {
    final instructorCourses = getInstructorCourses(instructorId);
    final courseIds = instructorCourses.map((course) => course.id).toSet();
    return studentProgress[instructorId]
            ?.where((progress) => courseIds.contains(progress.courseId))
            .toList() ??
        [];
  }

  static Stream<List<ChatMessage>> getChatMessages(String courseId) {
    return Stream.value(
      _dummyChats.values
          .expand((message) => message)
          .where((message) => message.courseId == courseId)
          .toList(),
    );
  }

  static Stream<List<ChatMessage>> getTeacherChat(String instructorId) {
    return Stream.value(_dummyChats[instructorId] ?? []);
  }

  static Map<String, List<ChatMessage>> getTeacherChatsByCourse(
    String instructorId,
  ) {
    final Map<String, List<ChatMessage>> chatsByCourse = {};
    final messages = _dummyChats[instructorId] ?? [];
    for (var message in messages) {
      if (!chatsByCourse.containsKey(message.courseId)) {
        chatsByCourse[message.courseId] = [];
      }
      chatsByCourse[message.courseId]!.add(message);
    }
    return chatsByCourse;
  }

  static final Map<String, List<ChatMessage>> _dummyChats = {
    'inst_1': [
      ChatMessage(
        id: '1',
        senderId: 'student_1',
        receiverId: 'inst_1',
        courseId: '1',
        message: 'Hi, I have a question about the course.',
        timestemp: DateTime.now().subtract(const Duration(minutes: 5)),
      ),
      ChatMessage(
        id: '2',
        senderId: 'inst_2',
        receiverId: 'student_2',
        courseId: '2',
        message: 'Sure, let me check.',
        timestemp: DateTime.now().subtract(const Duration(minutes: 3)),
      ),
      ChatMessage(
        id: '3',
        senderId: 'student_3',
        receiverId: 'inst_3',
        courseId: '3',
        message: 'Thanks!',
        timestemp: DateTime.now().subtract(const Duration(minutes: 1)),
      ),
    ],
  };

  static void updateLessonStates(
    String courseId,
    String lessonId, {
    bool? isCompleted,
    bool? isLocked,
  }) {
    final courseIndex = courses.indexWhere((c) => c.id == courseId);
    if (courseIndex != -1) {
      final course = courses[courseIndex];
      final lessonIndex = course.lessons.indexWhere((l) => l.id == lessonId);
      if (lessonIndex != -1) {
        var updatedLesson = course.lessons[lessonIndex].copyWith(
          isCompleted: isCompleted ?? course.lessons[lessonIndex].isCompleted,
          isLocked: isLocked ?? course.lessons[lessonIndex].isLocked,
        );

        courses[courseIndex].lessons[lessonIndex] = updatedLesson;
      }
    }
  }

  static bool isLessonCompleted(String courseId, String lessonId) {
    final course = getCourseById(courseId);
    return course.lessons
        .firstWhere(
          (l) => l.id == lessonId,
          orElse: () => Lesson(
            id: '',
            title: '',
            description: '',
            videoUrl: '',
            duration: 0,
            resources: [],
          ),
        )
        .isCompleted;
  }
}

class TeacherStats {
  final int totalStudents;
  final int activeCourses;
  final double totalRevenue;
  final double averageRating;
  final List<int> monthlyEnrollments;
  final List<double> monthlyRevenue;
  final StudentEngagement studentEngagement;

  TeacherStats({
    required this.totalStudents,
    required this.activeCourses,
    required this.totalRevenue,
    required this.averageRating,
    required this.monthlyEnrollments,
    required this.monthlyRevenue,
    required this.studentEngagement,
  });

  factory TeacherStats.empty() => TeacherStats(
    totalStudents: 0,
    activeCourses: 0,
    totalRevenue: 0,
    averageRating: 0,
    monthlyEnrollments: [],
    monthlyRevenue: [],
    studentEngagement: StudentEngagement.empty(),
  );
}

class StudentEngagement {
  final double averageCompletionRate;
  final int averageTimePerLesson;
  final int activeStudentsThisWeek;
  final Map<String, double> courseCompletionRates;

  StudentEngagement({
    required this.averageCompletionRate,
    required this.averageTimePerLesson,
    required this.activeStudentsThisWeek,
    required this.courseCompletionRates,
  });

  factory StudentEngagement.empty() => StudentEngagement(
    averageCompletionRate: 0,
    averageTimePerLesson: 0,
    activeStudentsThisWeek: 0,
    courseCompletionRates: {},
  );
}

class StudentProgress {
  final String studentId;
  final String studentName;
  final String courseId;
  final String courseName;
  final double progress;
  final DateTime lastActive;
  final List<int> quizScores;
  final int completedLessons;
  final int totalLessons;
  final int averageTimePerLesson;

  double get averageScore {
    if (quizScores.isEmpty) return 0.0;
    return quizScores.reduce((a, b) => a + b) / quizScores.length / 100;
  }

  StudentProgress({
    required this.studentId,
    required this.studentName,
    required this.courseId,
    required this.courseName,
    required this.progress,
    required this.lastActive,
    required this.quizScores,
    required this.completedLessons,
    required this.totalLessons,
    required this.averageTimePerLesson,
  });
}
