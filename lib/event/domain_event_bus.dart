import 'package:ddd_event/event/domain_event.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

import 'domain_event_handler.dart';

abstract class _DomainEventBus {
  final EventBus eventBus;

  void fire(DomainEvent event) => eventBus.fire(event);

  void registerHandlers() {
    eventBus.on<DomainEvent>().listen((event) => event.handler.handle(event));
  }


  _DomainEventBus(this.eventBus);
}

abstract class DomainSynchronousEventBus extends _DomainEventBus {
  DomainSynchronousEventBus() : super(EventBus());
}

abstract class DomainAsynchronousEventBus extends _DomainEventBus {
  DomainAsynchronousEventBus() : super(EventBus());
}
