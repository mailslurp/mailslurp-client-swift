Pod::Spec.new do |s|
  s.name = 'mailslurp'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '15.17.9'
  s.source = { :git => 'git@github.com:mailslurp/mailslurp-client-swift.git', :tag => '15.17.9' }
  s.authors = 'mailslurp'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://www.mailslurp.com'
  s.summary = 'mailslurp Swift SDK'
  s.documentation_url = 'https://docs.mailslurp.com/swift/'
  s.source_files = 'mailslurp/**/*.swift'
  s.dependency 'AnyCodable-FlightSchool', '~> 0.6.1'
  s.dependency 'PromiseKit/CorePromise', '~> 6.15.3'
end
