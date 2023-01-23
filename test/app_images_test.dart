import 'dart:io';

import 'package:flutter_test/flutter_test.dart';
import 'package:clinic/resources/resources.dart';

void main() {
  test('app_images assets test', () {
    expect(File(AppImages.bellhop).existsSync(), true);
    expect(File(AppImages.clipboard).existsSync(), true);
    expect(File(AppImages.hospital).existsSync(), true);
    expect(File(AppImages.message).existsSync(), true);
    expect(File(AppImages.settings).existsSync(), true);
  });
}
