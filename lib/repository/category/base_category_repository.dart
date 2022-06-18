import '../../models/models.dart';

abstract class BaseCategoryRepository {
  Stream<List<Categoryy>> getAllCategories();
}
