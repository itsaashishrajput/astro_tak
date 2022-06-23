import 'dart:ffi';

import 'package:astro_tak/models/details_birth.dart';
import 'package:astro_tak/models/place_birth.dart';
import 'package:json_annotation/json_annotation.dart';


part 'family_profile.g.dart';

@JsonSerializable()

class  FamilyProfile {

  String? uuid;
  String? relation;
  int? relationId;
  String? firstName;
  String? middleName;
  String? lastName;
  String? fullName;
  String? gender;
  String? dateAndTimeOfBirth;
  
  BirthDetails? birthDetails;
  BirthPlace? birthPlace;

  FamilyProfile();

  factory FamilyProfile.fromJson(Map<String, dynamic> json) => _$FamilyProfileFromJson(json);
  
  Map<String, dynamic> toJson() => _$FamilyProfileToJson(this);
  
  
}