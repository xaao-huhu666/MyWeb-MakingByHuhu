import 'package:logger/logger.dart';

main() {
  // 初始化 Logger
  final logger = Logger();

  // 1. 声明一个函数：定义了一个叫 greet 的工具
  String greet(String name) {
    return '你好，$name！';
  }

  // 2. 调用函数：使用这个工具
  void main() {
    String result = greet('小明');
    logger.i(result); // 使用 info 级别日志输出
  }
}
