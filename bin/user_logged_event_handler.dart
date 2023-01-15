import 'package:ddd_event/event/domain_event_handler.dart';

import 'user_logged_event.dart';

class UserLoggedInEventHandler extends DomainEventHandler<UserLoggedInEvent> {
  UserLoggedInEventHandler();

  @override
  void handle(UserLoggedInEvent event) {
    print(event.name);
  }
}
