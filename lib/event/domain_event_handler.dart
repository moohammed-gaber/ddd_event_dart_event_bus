import 'package:ddd_event/event/domain_event.dart';

abstract class DomainEventHandler<T extends DomainEvent> {
  DomainEventHandler();

  void handle(T event);
}
