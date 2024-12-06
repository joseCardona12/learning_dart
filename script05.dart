void main() async{
  final Service service = new Service("&&&&");
  final responseService = await service.httpGet();
  print({"message": "Method httpGet before future"});
  print("response ${responseService}");
  print({"message": "Method httpGet after future"});

}

class Service {
  String url;

  Service([String this.url = "//"]);

  String get getUrl {
    return this.url;
  }

  Future<String> httpGet()async{
    final Future<String> response = Future.delayed(const Duration(seconds: 1), ()=>"Hello");
    return response;
  }
}
