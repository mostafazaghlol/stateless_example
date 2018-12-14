class photo_model{
  int id;
  String imageurl,title;

  photo_model(this.id,this.title,this.imageurl);

  photo_model.fromJson(parsedJson){
    id = parsedJson['id'];
    imageurl = parsedJson['url'];
    title = parsedJson['title'];
  }
}