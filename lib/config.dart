// ignore_for_file: avoid_classes_with_only_static_members, always_specify_types

class Environments {
  static const String PRODUCTION = 'prod';
  static const String QAS = 'QAS';
  static const String DEV = 'dev';
  static const String LOCAL = 'local';
}

class ConfigEnvironments {
  static const String _currentEnvironments = Environments.LOCAL;
  static final List<Map<String, String>> _availableEnvironments =
      <Map<String, String>>[
    {
      'env': Environments.LOCAL,
      'url': 'http://localhost:8080/api/',
    },
    {
      'env': Environments.DEV,
      'url': '',
    },
    {
      'env': Environments.QAS,
      'url': '',
    },
    {
      'env': Environments.PRODUCTION,
      'url': '',
    },
  ];

  static Map<String, String> getEnvironments() {
    return _availableEnvironments.firstWhere(
      (Map<String, String> d) => d['env'] == _currentEnvironments,
    );
  }
}
