void main(){

  Music music = new Music();
  print(music.list);

  print(music.name);
  print(music.year);

  print(music.com_name);
  print(music.owner);


}

class Music extends Artist with Company,Owner{
  var list = 100;
}

class Artist{
  var name = "Unknown";
  var year = 2018;
}

class Company{
  var com_name = "G-Series";
}

class Owner{
  var owner = "@Iamsdt";
}