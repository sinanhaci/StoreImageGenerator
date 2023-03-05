
import 'package:flutter/material.dart';

import '../log/page_logger/logger_mixin.dart';

abstract class BaseState<T extends StatefulWidget> extends State<T> with LoggerMixin,TickerProviderStateMixin, WidgetsBindingObserver{
  
}
