typedef void EventCallback(arg);

class EventBus {
  // 私有构造函数
  EventBus._internal();

  // 单例
  static EventBus _singleton = EventBus._internal();

  // 工厂构造函数
  factory EventBus() => _singleton;

  // 事件订阅队列 key事件名 value 对应事件订阅的队列
  var _emap = Map<Object, List<EventCallback>>();

  // 订阅者  没有eventName 就=[] 有的话 就 add()
  void on(eventName, EventCallback f) {
    if (eventName == null || f == null) return;
    _emap[eventName] ??= List<EventCallback>();
    _emap[eventName].add(f);
  }

  // 移除事件
  void off(eventName, [EventCallback f]) {
    var list = _emap[eventName];
    if (eventName == null || list == null) return;
    if (f == null) {
      _emap[eventName] = null;
    } else {
      list.remove(f);
    }
  }

  // 触发事件  arg参数
  void emit(eventName, [arg]) {
    var list = _emap[eventName];
    if (list == null) return;
    list.forEach((item) {
      item(arg);
    });
  }
}

// 定一个顶级变量
var eventBus = EventBus();
