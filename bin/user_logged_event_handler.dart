import 'package:ddd_event/event/domain_event_handler.dart';

import 'user_logged_event.dart';

class UserLoggedInEventHandler extends DomainEventHandler<UserLoggedInEvent> {
  UserLoggedInEventHandler();

  @override
  void handle(
    UserLoggedInEvent event,
  ) {
    print('UserLoggedInEvent');
  }
}

class UserLoggedOutEventHandler extends DomainEventHandler<UserLoggedOutEvent> {
  UserLoggedOutEventHandler();

  @override
  void handle(UserLoggedOutEvent event) {
    print('UserLoggedOutEvent');
  }
}
