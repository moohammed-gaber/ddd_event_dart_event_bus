import 'package:ddd_event/event/domain_event.dart';
import 'package:event_bus/event_bus.dart';

import 'domain_event_handler.dart';

abstract class _DomainEventBus {
  final EventBus eventBus;

  void fire(DomainEvent event) => eventBus.fire(event);

  void destroy() => eventBus.destroy();

  void registerAssignedHandlers() => eventBus
      .on<DomainEvent>()
      .listen((value) => assignedHandlers().forEach((e) => e.handle(value)));

  List<DomainEventHandler> assignedHandlers();

  _DomainEventBus(this.eventBus);
}

abstract class DomainSynchronousEventBus extends _DomainEventBus {
  DomainSynchronousEventBus() : super(EventBus(sync: true));
}

abstract class DomainAsynchronousEventBus extends _DomainEventBus {
  DomainAsynchronousEventBus() : super(EventBus(sync: false));
}
