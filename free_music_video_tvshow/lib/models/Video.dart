import 'package:free_music_video_tvshow/utils/Utils.dart';

class Video {
  String name;
  String _thumbmailDefault;
  String _thumbmailMedium;
  String _thumbmailHigh;
  String youtubeId;
  bool isFavorite = false;
  bool isWatchLate = false;
  double updateTime = 0;

  String get thumbmailDefault {
    _thumbmailDefault = getThumbnailYoutube(THUMBNAIL_DEFAULT, youtubeId);
    return _thumbmailDefault;
  }

  String get thumbmailMedium {
    _thumbmailMedium = getThumbnailYoutube(THUMBNAIL_MEDIUM, youtubeId);
    return _thumbmailMedium;
  }

  String get thumbmailHigh {
    _thumbmailHigh = getThumbnailYoutube(THUMBNAIL_MEDIUM, youtubeId);
    return _thumbmailHigh;
  }
}