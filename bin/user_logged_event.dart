import 'package:ddd_event/event/domain_event.dart';

class UserLoggedInEvent extends DomainEvent {
  String name;

  UserLoggedInEvent(this.name);
}

