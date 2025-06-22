import 'package:equatable/equatable.dart';

class ProfileModel extends Equatable {
  final String fullName;
  final String email;
  final String? photoUrl;
  final String? phoneNumber;
  final String? bio;
  final ProfileState state;

  const ProfileModel({
    required this.fullName,
    required this.email,
    this.photoUrl,
    this.phoneNumber,
    this.bio,
    required this.state,
  });

  ProfileModel copyWith({
    String? fullName,
    String? email,
    String? photoUrl,
    String? phoneNumber,
    String? bio,
    ProfileState? state,
  }) {
    return ProfileModel(
      fullName: fullName ?? this.fullName,
      email: email ?? this.email,
      photoUrl: photoUrl ?? this.photoUrl,
      phoneNumber: phoneNumber ?? this.phoneNumber,
      bio: bio ?? this.bio,
      state: state ?? this.state,
    );
  }

  List<Object?> get props => [
    fullName,
    email,
    photoUrl,
    phoneNumber,
    bio,
    state,
  ];
}

class ProfileState extends Equatable {
  final int coursesCount;
  final int hourseSpent;
  final double successRate;

  const ProfileState({
    required this.coursesCount,
    required this.hourseSpent,
    required this.successRate,
  });

  @override
  List<Object?> get props => [coursesCount, hourseSpent, successRate];
}
