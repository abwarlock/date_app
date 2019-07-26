import 'package:rxdart/rxdart.dart';

class RecoveryBloc {
  String data = "";
  BehaviorSubject<String> subjectCounter;

  RecoveryBloc({this.data}) {
    subjectCounter = BehaviorSubject<String>.seeded(this.data);
  }

  Observable<String> get counterObservable => subjectCounter.stream;

  void setData(String updatedData) {
    data = updatedData;
    subjectCounter.sink.add(data);
  }

  void dispose() {
    subjectCounter.close();
  }
}
