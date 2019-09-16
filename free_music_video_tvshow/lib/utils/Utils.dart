const String TYPE_DATA = "type";
const int THUMBNAIL_DEFAULT = 1;
const int THUMBNAIL_MEDIUM = 2;
const int THUMBNAIL_HIGHT = 3;


String getThumbnailYoutube(int type, String youtubeId) {
  switch (type) {
    case THUMBNAIL_DEFAULT:
      return "https://img.youtube.com/vi/" + youtubeId + "/default.jpg";
    case THUMBNAIL_MEDIUM:
      return "https://img.youtube.com/vi/" + youtubeId + "/mqdefault.jpg";
    case THUMBNAIL_HIGHT:
      return "https://img.youtube.com/vi/" + youtubeId + "/hqdefault.jpg";
    default:
      return "https://img.youtube.com/vi/" + youtubeId + "/default.jpg";
  }
}