# Twitter Clone

Source Code for Full Stack Twitter App - Works on Android & iOS!

## Features
- Sign Up With Email, Password
- Sign In With Email, Password
- Tweeting Text
- Tweeting Image
- Tweeting Link
- Hashtag identification & storage
- Displaying tweets
- Liking tweet
- Retweeting
- Commenting/Replying
- Follow user
- Search users
- Display followers, following, recent tweets
- Edit User Profile
- Show tweets that have 1 hashtag
- Twitter Blue
- Notifications tab (replied to you, followed you, like your pic, retweeted)

## YouTube
I have created a tutorial based on this, do check it out on my channel [Rivaan Ranawat](https://www.youtube.com/watch?v=XnxZLhtkFeg) 

<p align="center">
  <img width="600" src="https://github.com/RivaanRanawat/flutter_twitter_clone/blob/master/flutter%20twitter%20clone%20appwriite%20riverpod%20thumbnail.png" alt="Youtube Tutorial Image">
</p>


## Installation
After cloning this repository, migrate to `flutter_twitter_clone` folder. Then, follow the following steps:
- Install Appwrite (Installation Steps [here](https://appwrite.io/docs/installation)
- Create Appwrite Project Locally
- Create Android & iOS Apps in the Dashboard
- Create Appwrite Database, Storage
- Modify Roles in Auth, Database, Storage
- Create Attributes for Tweets, Users, Notifications Collection
- Copy the required ids & change it in `lib/constants/appwrite_constants.dart`
- Change your IP Address in `lib/constants/appwrite_constants.dart`

Then run the following commands to run your app:
```bash
  flutter pub get
  open -a simulator (to get iOS Simulator)
  flutter run
```

## Tech Used
**Server**: Appwrite Auth, Appwrite Storage, Appwrite Database, Appwrite Realtime

**Client**: Flutter, Riverpod
    
## Feedback

If you have any feedback, please reach out to me at namanrivaan@gmail.com

