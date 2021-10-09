/// Flag class needed to be processed by json_config_generator
class Configuration {
  /// Determinate the generated enum name\
  /// ```dart
  /// @Configuration({
  /// environmentEnumName = 'Env',
  /// // ...
  /// })
  /// ```
  /// Generator creates an environment Enum called Env\
  /// ```dart
  /// enum Env{...}
  /// ```
  /// the enum only is created when have more than one environments
  final String environmentEnumName;

  /// Deternminate the environments you have\
  /// ```dart
  /// @Configuration({
  /// environments = [
  ///   Environemnt(name: 'dev', path: 'assets/config/dev.json'),
  ///   Environemnt(name: 'prd', path: 'assets/config/prd.json'),
  /// ],
  /// // ...
  /// })
  /// ```
  /// when have more than one creates a enum with names of each \
  /// environment to choose with path want to use
  /// ```dart
  /// enum Env{ dev, prd }
  /// ```
  final List<Environment> environments;

  const Configuration({
    this.environmentEnumName = 'Environment',
    required this.environments,
  });
}

/// class to define an environment
class Environment {
  /// Determinate the environment name
  final String name;

  /// Determinate the environment path
  final String path;

  const Environment({required this.name, required this.path});
}
