import 'package:ddd_event/event/domain_event_bus.dart';
import 'package:event_bus_plus/event_bus_plus.dart';


class AppEventBus extends DomainEventBus {
  AppEventBus():super(EventBus());
}
