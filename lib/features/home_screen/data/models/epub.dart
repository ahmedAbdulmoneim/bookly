class Epub {
  bool? isAvailable;
  String? accessToken;

  Epub({this.isAvailable,this.accessToken});

  Epub.fromJson(Map<String, dynamic> json) {
    isAvailable = json['isAvailable'];
    accessToken = json['acsTokenLink'];
  }

}
