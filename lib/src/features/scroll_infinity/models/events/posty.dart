
import 'package:freezed_annotation/freezed_annotation.dart';

part 'posty.freezed.dart';

@freezed
class PostEvent with _$PostEvent {
  factory PostEvent.fetch() = _Posty;
	
}
