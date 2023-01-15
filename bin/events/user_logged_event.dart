import 'package:ddd_event/event/domain_event.dart';
import 'package:ddd_event/event/domain_event_handler.dart';

import '../handlers/user_logged_event_handler.dart';


class UserLoggedInEvent extends DomainEvent {
  String name;

  UserLoggedInEvent(this.name);

  final _handler = UserLoggedInEventHandler();

  @override
  // TODO: implement props
  List<Object?> get props => [name];

  @override
  // TODO: implement handler
  DomainEventHandler<DomainEvent> get handler => _handler;
}

class UserLoggedOutEvent extends DomainEvent {
  UserLoggedOutEvent();
  final _handler = UserLoggedOutEventHandler();

  @override
  // TODO: implement props
  List<Object?> get props => [];

  @override
  DomainEventHandler<DomainEvent> get handler => _handler;
}
