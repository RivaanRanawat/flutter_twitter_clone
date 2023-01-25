import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:twitter_clone/common/error_page.dart';
import 'package:twitter_clone/constants/constants.dart';
import 'package:twitter_clone/features/user_profile/controller/user_profile_controller.dart';
import 'package:twitter_clone/features/user_profile/widget/user_profile.dart';
import 'package:twitter_clone/models/user_model.dart';

class UserProfileView extends ConsumerWidget {
  static route(UserModel userModel) => MaterialPageRoute(
        builder: (context) => UserProfileView(
          userModel: userModel,
        ),
      );
  final UserModel userModel;
  const UserProfileView({
    super.key,
    required this.userModel,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    UserModel copyOfUser = userModel;

    return Scaffold(
      body: ref.watch(getLatestUserProfileDataProvider).when(
            data: (data) {
              if (data.events.contains(
                'databases.*.collections.${AppwriteConstants.usersCollection}.documents.${copyOfUser.uid}.update',
              )) {
                copyOfUser = UserModel.fromMap(data.payload);
              }
              return UserProfile(user: copyOfUser);
            },
            error: (error, st) => ErrorText(
              error: error.toString(),
            ),
            loading: () {
              return UserProfile(user: copyOfUser);
            },
          ),
    );
  }
}
