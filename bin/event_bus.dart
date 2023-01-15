import 'package:ddd_event/event/domain_event.dart';
import 'package:ddd_event/event/domain_event_bus.dart';
import 'package:ddd_event/event/domain_event_handler.dart';

import 'user_logged_event_handler.dart';

class AppEventBus extends DomainAsynchronousEventBus {
  @override
  List<DomainEventHandler<DomainEvent>> assignHandlers() {
    return [UserLoggedInEventHandler()];
  }
}
