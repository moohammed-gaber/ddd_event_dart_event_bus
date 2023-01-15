import 'package:ddd_event/event/domain_event.dart';
import 'package:ddd_event/event/domain_event_handler.dart';

import 'user_logged_event_handler.dart';

class UserLoggedInEvent extends DomainEvent {
  String name;

  UserLoggedInEvent(this.name);

  @override
  // TODO: implement props
  List<Object?> get props => [name];

  @override
  // TODO: implement handler
  DomainEventHandler<DomainEvent> get handler => UserLoggedInEventHandler();
}

class UserLoggedOutEvent extends DomainEvent {
  UserLoggedOutEvent();

  @override
  // TODO: implement props
  List<Object?> get props => [];

  DomainEventHandler<DomainEvent> get handler => UserLoggedOutEventHandler();
}
