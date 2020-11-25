class Status{
  String name;
  String thumbnail;
  String image;

  Status({this.name, this.thumbnail, this.image});

  Map toJson() => {
    'name': name,
    'thumbnail': thumbnail,
    'image':image
  };
}

List<Status> statusList = [
  Status(name: 'Dino', thumbnail: "assets/images/plus.png",image: 'assets/images/status.jpg'),
  Status(name: 'Jonathan', thumbnail: "assets/images/profile.jpg",image: 'assets/images/status.jpg'),
  Status(name: 'Stella', thumbnail: "assets/images/profile.jpg",image: 'assets/images/status.jpg'),
  Status(name: 'Alex', thumbnail: "assets/images/profile.jpg",image: 'assets/images/status.jpg'),
  Status(name: 'Aldrin', thumbnail: "assets/images/profile.jpg",image: 'assets/images/status.jpg')
];
