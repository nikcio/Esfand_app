import 'package:intl/intl.dart';

String timeAgo(DateTime date){
  Duration diff = DateTime.now().difference(date);
  if(diff.inDays > 120){
    return DateFormat("yMEd").format(date);
  }else if(diff.inDays >= 1){
    return diff.inDays.floor().toString() + " day" + ((diff.inDays >= 2) ? "s" : "") + " ago";
  }else if(diff.inHours >= 1){
    return diff.inHours.floor().toString() + " hour" + ((diff.inHours >= 2) ? "s" : "") + " ago";
  }else if(diff.inMinutes >= 1){
    return diff.inMinutes.floor().toString() + " minute" + ((diff.inMinutes >= 2) ? "s" : "") + " ago";
  }else if(diff.inSeconds >= 10){
    return diff.inSeconds.floor().toString() + " second" + ((diff.inSeconds >= 2) ? "s" : "") + " ago";
  }else{
    return "Just now";
  }
}