import 'package:repositories/repositories.dart';
import 'package:services/services.dart';

class FirestoreRepository {
  final FirestoreService firestoreService;
  final AuthRepository authRepository;

  FirestoreRepository(this.firestoreService, this.authRepository);


}