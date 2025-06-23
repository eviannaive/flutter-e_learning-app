import 'package:e_learning/models/course.dart';
import 'package:e_learning/models/lesson.dart';
import 'package:e_learning/models/quiz.dart';
import 'package:e_learning/models/quiz_attempt.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';
import 'package:get/get_core/get_core.dart';


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
      lessons: _createReactNativeLessons(),
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
      lessons: _createMarketingLessons(),
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
      lessons: _createLanguageLessons(),
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
      questions: _createDataScienceQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 10)),
      isActive: true,
    ),
    Quiz(
      id: '3',
      title: 'Machine Learning Fundamentals Quiz',
      description: 'Test your knowledge of machine learning fundamentals',
      timeLimit: 60,
      questions: _createMachineLearningQuizQuestions(),
      createdAt: DateTime.now().subtract(const Duration(days: 15)),
      isActive: true,
    ),
  ];

  static final List<QuizAttempt> quizAttempts = [];

  static List<Lesson> _createFlutterLessons(){
    return [
      Lesson(id: '1',title: 'Introduction to Flutter',description: 'This is the description for the Introduction to Flutter lesson.', videoUrl:'https://www.youtube.com/watch?v=dQw4w9WgXcQ',duration:30,resources: _createDummyResources(),isPreview:true, isLocked:false),
      _createLesson('2','Dart Programming',false,false),
      _createLesson('3','Flutter Widgets',false,false),
      _createLesson('4','State Management',false,false),
      _createLesson('5','Navigation',false,false),
      _createLesson('6','Performance Optimization',false,false),
    ]
  }
}

static List<Lesson> _createDataScienceLessons(){
    return [
      Lesson(id: '1',title: 'Introduction to Data Science',description: 'This is the description for the Introduction to Data Science lesson.', videoUrl:'https://www.youtube.com/watch?v=dQw4w9WgXcQ',duration:30,resources: _createDummyResources(),isPreview:true, isLocked:false),
      _createLesson('2','Data Wrangling',false,false),
      _createLesson('3','Exploratory Data Analysis',false,false),
      _createLesson('4','Machine Learning Basics',false,false),
      _createLesson('5','Data Visualization',false,false),
      _createLesson('6','Advanced Data Science Techniques',false,false),
    ]
  }
}

static List<Lesson> _createDesignLessons(){
    return [
      Lesson(id: '1',title: 'Introduction to Design',description: 'This is the description for the Introduction to Design lesson.', videoUrl:'https://www.youtube.com/watch?v=dQw4w9WgXcQ',duration:30,resources: _createDummyResources(),isPreview:true, isLocked:false),
      _createLesson('2','UI/UX Design Principles',false,false),
      _createLesson('3','Design Patterns',false,false),
      _createLesson('4','Responsive Design',false,false),
      _createLesson('5','Design Tools',false,false),
      _createLesson('6','Design Thinking',false,false),
    ]
  }
}

static Lesson _createLesson(String id, String title, bool isPreview, bool isCompleted){
    return Lesson(
      id: 'lesson_$id',
      title: title,
      description: 'This is the description for the $title', videoUrl:'https://www.youtube.com/watch?v=dQw4w9WgXcQ',duration:30,
      resources: _createDummyResources(),
      isPreview:isPreview,
      isLocked:!isPreview,
      isCompleted: isCompleted,
    );
}
