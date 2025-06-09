Pod::Spec.new do |s|
  s.name = 'mailslurp'
  s.ios.deployment_target = '12.0'
  s.osx.deployment_target = '10.13'
  s.tvos.deployment_target = '12.0'
  s.watchos.deployment_target = '4.0'
  s.version = '16.2.0'
  s.source = { :git => 'git@github.com:mailslurp/mailslurp-client-swift.git', :tag => '16.2.0' }
  s.authors = 'mailslurp'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://www.mailslurp.com'
  s.summary = 'mailslurp Swift SDK'
  s.documentation_url = 'https://docs.mailslurp.com/swift/'
  s.source_files = 'mailslurp/**/*.swift'
  s.dependency 'PromiseKit/CorePromise', '~> 8.1'
end
