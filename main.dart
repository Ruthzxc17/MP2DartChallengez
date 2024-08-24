class Song {
  String title;
  String artist;
  int minutes;
  int seconds;

  Song(this.title, this.artist, this.minutes, this.seconds);

  void displaySong() {
    
    String formattedSeconds = seconds < 10 ? '0$seconds' : '$seconds';
    print('Song: $title by $artist, Duration: $minutes:$formattedSeconds');
  }
}

class Playlist {
  String name;
  List<Song> songs;

  Playlist(this.name) : songs = [];

  void addSong(Song song) {
    songs.add(song);
  }

  void displayPlaylist() {
    print('Playlist: $name');
    for (var song in songs) {
      song.displaySong();
    }
  }
}

class MusicFestival {
  String name;
  List<Playlist> stages;

  MusicFestival(this.name) : stages = [];

  void addStage(Playlist playlist) {
    stages.add(playlist);
  }

  void displayFestival() {
    print('Music Festival: $name');
    print('');
    for (var stage in stages) {
      stage.displayPlaylist();
      print('');
    }
  }
}

void main() {
  print('PLAYLIST SONG');

  var song1 = Song('Raining in Manila ', 'Lola Amour', 4, 52);
  var song2 = Song('Pasilyo ', 'SunKissed Lola', 4, 35);
  var song3 = Song('Dilaw', 'Maki', 3, 45);
  var song4 = Song('Jopay', 'Mayonnaise', 6, 35);
  var song5 = Song('711', 'TONEEJAY', 3, 43);
  var song6 = Song('ERE', 'juan karlos', 4, 50);
  var song7 = Song('Mundo', 'IV of Spades perform ', 6, 50);
  var song8 = Song('PALAGI', ' TJ Monterde', 3, 57);
  var song9 = Song(' Heaven Knows', 'Orange & Lemons ', 4, 02);
  var song10 = Song('Ang Huling El Bimbo', 'Eraserheads', 5, 30);
  var song11 = Song(' Ligaya ', 'Eraserheads', 4, 28);
  var song12 = Song('IKAW LANG', 'NOBITA', 4, 56);
  var song13 = Song('Sa Susunod Na Habang Buhay ', 'Ben&Ben', 6, 44);
  var song14 = Song('Museo', 'Eliza Maturan', 5, 02);
  var song15 = Song('Pagsamo ', 'Arthur Nery ', 5, 01);

  var stage1 = Playlist('Main Stage');
  var stage2 = Playlist('Indie Stage');
  var stage3 = Playlist('Electronic Stage');

  stage1.addSong(song1);
  stage1.addSong(song2);
  stage1.addSong(song3);
  stage1.addSong(song4);
  stage1.addSong(song5);

  stage2.addSong(song6);
  stage2.addSong(song7);
  stage2.addSong(song8);
  stage2.addSong(song9);
  stage2.addSong(song10);

  stage3.addSong(song11);
  stage3.addSong(song12);
  stage3.addSong(song13);
  stage3.addSong(song14);
  stage3.addSong(song15);

  var festival = MusicFestival('Summer Fest');

  festival.addStage(stage1);
  festival.addStage(stage2);
  festival.addStage(stage3);

  festival.displayFestival();
}
