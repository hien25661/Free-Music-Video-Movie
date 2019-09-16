class Country {
  String name;
  String countryCode;
  String _thumbnail;
  String _link;

  Country(this.name, this.countryCode);

  String get link {
    _link = 'https://kworb.net/youtube/trending/$countryCode.html';
   return _link;
  }

  String get thumbnail {
    _thumbnail = 'https://www.countryflags.io/$countryCode/shiny/64.png';
    if(countryCode == 'uk'){
      _thumbnail = 'https://www.countryflags.io/gb/shiny/64.png';
    }
    return _thumbnail;
  }
}