# Installs the agent
class blackfire::agent::install inherits blackfire::agent {
  if versioncmp($blackfire::agent::params['version'], '1.50.0') > 0 {
    package { 'blackfire':
      ensure => $blackfire::agent::params['version'],
    }
  }
  else {  
    package { 'blackfire-agent':
      ensure => $blackfire::agent::params['version'],
    }
  }
}
