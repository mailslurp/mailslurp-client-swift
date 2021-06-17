Pod::Spec.new do |s|
  s.name = 'mailslurp'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '12.1.3333'
  s.source = { :git => 'git@github.com:mailslurp/mailslurp-client-swift.git', :tag => '12.1.3333' }
  s.authors = 'MailSlurp'
  s.license = { :type => 'MIT' }
  s.homepage = 'https://www.mailslurp.com'
  s.summary = 'mailslurp Swift SDK'
  s.documentation_url = 'https://www.mailslurp.com/docs/swift/'
  s.source_files = 'mailslurp/Classes/**/*.swift'
end
