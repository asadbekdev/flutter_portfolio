class User {
  String? name;
  String? pic;
  String? bio;
  String? job;
  String? msg;
  User(this.name, this.pic, this.bio, this.job,this.msg);

  String? get userName => this.name;
  String? get userBio => this.bio;
  String? get userJob => this.job;
  String? get userMsg => this.msg;
}
