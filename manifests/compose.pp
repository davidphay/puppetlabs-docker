# @summary install Docker Compose using the recommended curl command.
#
# @param ensure
#   Whether to install or remove Docker Compose
#   Valid values are absent present
#
# @param version
#   The version of Docker Compose to install.
*
class docker::compose (
  Enum[present,absent] $ensure  = present,
  Optional[String]     $version = $docker::params::compose_version,
) inherits docker::params {

  if $version and $ensure != 'absent' {
    $ensure = $version
  } else {
    $ensure = $ensure
  }
}
