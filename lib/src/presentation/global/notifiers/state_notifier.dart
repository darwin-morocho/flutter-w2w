import 'package:flutter/foundation.dart';

abstract class StateNotifier<State> extends ChangeNotifier {
  StateNotifier(State initialState)
      : _oldState = initialState,
        _state = initialState;

  State _oldState, _state;

  State get oldState => _oldState;
  State get state => _state;

  bool _mounted = true;
  bool get mounted => _mounted;

  set state(State newState) {
    _update(newState);
  }

  onlyUpdate(State newState) {
    _update(newState, notify: false);
  }

  void _update(
    State newState, {
    bool notify = true,
  }) {
    if (state != newState) {
      _oldState = state;
      _state = newState;
      if (notify) {
        notifyListeners();
      }
    }
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
