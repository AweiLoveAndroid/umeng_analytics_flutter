# umeng_analytics_flutter

友盟统计Flutter插件

友盟统计官方SDK: [umeng:analytics](http://mobile.umeng.com/analytics)

## 使用

### 初始化

```dart
import 'package:platform/platform.dart';

final Platform platform = const LocalPlatform();
if (platform.isAndroid)
  UMengAnalytics.init('Android AppKey', encrypt: true, reportCrash: false);
else if (platform.isIOS)
  UMengAnalytics.init('iOS AppKey', encrypt: true, reportCrash: false);
```

### 需要收集日志的页面

```dart
initState() {
  super.initState();

  UMengAnalytics.beginPageView("home");
}

dispose() {
  super.dispose();

  UMengAnalytics.endPageView("home");
}

someFunction() {
  UMengAnalytics.logEvent("some click");
}
```

----

## QQ群：

2千人QQ群，Flutter学习开发交流群，QQ群号：**202921297**， 欢迎大家加入。

----


## 其它

For help getting started with Flutter, view our online
[documentation](http://flutter.io/).

For help on editing plugin code, view the [documentation](https://flutter.io/platform-plugins/#edit-code).
