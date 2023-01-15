import 'package:ddd_event/event/domain_event_handler.dart';
import 'package:event_bus_plus/event_bus_plus.dart';

abstract class DomainEvent extends AppEvent {
  DomainEvent();

  DomainEventHandler get handler;
}
