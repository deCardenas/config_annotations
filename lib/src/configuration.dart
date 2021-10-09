class Configuration {
  final String environmentEnumName;
  final List<Environment> environments;

  const Configuration({
    this.environmentEnumName = 'Environment',
    required this.environments,
  });
}

class Environment {
  final String name;
  final String path;

  const Environment({required this.name, required this.path});
}
