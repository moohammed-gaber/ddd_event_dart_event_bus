import 'event_bus.dart';
import 'user_logged_event.dart';

void main(List<String> arguments) {
  final bus = AppEventBus();
  bus.registerAssignedHandlers();
  bus.fire(UserLoggedInEvent('mohamed'));

  Future.delayed(Duration(seconds: 3));
}
