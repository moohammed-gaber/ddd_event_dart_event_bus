import 'package:ddd_event/event/domain_event.dart';
import 'package:ddd_event/event/domain_event_bus.dart';
import 'package:ddd_event/event/domain_event_handler.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

import 'user_logged_event_handler.dart';

class AppEventBus extends DomainEventBus {
  AppEventBus():super(EventBus());
}
