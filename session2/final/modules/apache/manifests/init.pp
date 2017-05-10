class apache {


Exec {
  path => ["/usr/bin", "/bin"],
}
package { 'httpd': ensure => installed }
service { 'httpd': ensure => running }
file { '/etc/httpd/conf.d/tomcat.conf':
  ensure => present,
  source => "/vagrant/puppet-demo/session2/final/httpd_tomcat.conf",
  require => Package['httpd'],
  notify => Service['httpd'],
}


}
