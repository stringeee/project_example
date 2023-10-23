abstract class ModelMapper<I, O> {
  O call(I inputType);
}

abstract class DomainModelMapper<I, O> implements ModelMapper<I, O> {}

abstract class StateModelMapper<I, O> implements ModelMapper<I, O> {}
