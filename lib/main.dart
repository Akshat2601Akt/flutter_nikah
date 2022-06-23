import 'package:flutter/material.dart';
import 'package:nikah/screens/appearance_screen.dart';
import 'package:nikah/screens/home_page.dart';
import 'package:nikah/screens/inbox_screen.dart';
import 'package:nikah/screens/membership_screen.dart';
import 'package:nikah/screens/landing_screen.dart';
import 'package:nikah/screens/login_screen.dart';
import 'package:nikah/screens/my_profile_screen.dart';
import 'package:nikah/screens/partner_preferences_screen.dart';
import 'package:nikah/screens/personal_details_screen.dart';
import 'package:nikah/screens/place_you_are_from_screen.dart';
import 'package:nikah/screens/privacy_settings_screen.dart';
import 'package:nikah/screens/user_profile_screen.dart';
import 'package:nikah/screens/profile_viewed_by_me_screen.dart';
import 'package:nikah/screens/qualification_screen.dart';
import 'package:nikah/screens/recent_actvities_screen.dart';
import 'package:nikah/screens/registration_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/ninth',
      routes: {
        '/': (context) => const LandingScreen(),
        '/second': (context) => const LoginScreen(),
        '/third': (context) => const RegistrationScreen(),
        '/forth': (context) => const PersonalDetailsScreen(),
        '/fifth': (context) => const AppearanceScreen(),
        '/sixth': (context) => const PlaceYouAreFromScreen(),
        '/seventh': (context) => const QualificationScreen(),
        '/eighth': (context) => const PartnerPreferencesScreen(),
        '/ninth': (context) => const HomePageScreen(),
        '/tenth': (context) => const UserProfileScreen(),
        '/eleventh': (context) => const ProfileViewedByMeScreen(),
        '/twelfth': (context) => const InboxScreen(),
        '/thirteenth': (context) => const RecentActivitiesScreen(),
        '/fourteenth': (context) => const PrivacySettingsScreen(),
        '/fifteenth': (context) => const MyProfileScreen(),
        '/sixteenth': (context) => const MembershipScreen(),
      },
    );
  }
}
