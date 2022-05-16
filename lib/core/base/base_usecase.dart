abstract class BaseUseCase<T, Params> {
  T call(Params params);
}

abstract class BaseUseCaseAsync<T, Params> {
  Future<T> call(Params params);
}
