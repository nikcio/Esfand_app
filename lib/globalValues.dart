import 'package:esfandapp/widgets/classes/level.dart';
import 'package:esfandapp/widgets/classes/notificationAlert.dart';
import 'package:esfandapp/widgets/classes/post.dart';
import 'package:esfandapp/widgets/classes/user.dart';
import 'package:esfandapp/widgets/classes/youtubeVideoData.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

bool isFullscreen = false;
int fullscreenIndex = 0;
int prevFullscreenIndex = 0;
int selectedIndex = 0;
List<Post> posts = [];
List<YoutubeVideoData> videos = [];
List<NotificationAlert> notifications = [];
List<User> leaderboardUsers = [];
Level level = Level(title: "null", progress: 0);
ItemScrollController listScrollController = ItemScrollController();