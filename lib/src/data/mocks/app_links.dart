import 'package:app_links/app_links.dart';

class MockAppLinks implements AppLinks {
  @override
  Future<Uri?> getInitialAppLink() async {
    return null;
  }

  @override
  Future<String?> getInitialAppLinkString() {
    throw UnimplementedError();
  }

  @override
  Future<Uri?> getLatestAppLink() {
    throw UnimplementedError();
  }

  @override
  Future<String?> getLatestAppLinkString() {
    throw UnimplementedError();
  }

  @override
  Stream<String> get stringLinkStream => throw UnimplementedError();

  @override
  Stream<Uri> get uriLinkStream => throw UnimplementedError();
}
