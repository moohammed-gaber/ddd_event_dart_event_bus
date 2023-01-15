import 'package:ddd_event/event/domain_event.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

abstract class DomainEventBus {
  DomainEventBus(this.eventBus);

  final EventBus eventBus;

  void fire(DomainEvent event) => eventBus.fire(event);

  void registerHandlers() =>
      eventBus.on<DomainEvent>().listen((event) => event.handler.handle(event));
}

