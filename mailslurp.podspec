Pod::Spec.new do |s|
  s.name = 'mailslurp'
  s.ios.deployment_target = '9.0'
  s.osx.deployment_target = '10.11'
  s.tvos.deployment_target = '9.0'
  s.watchos.deployment_target = '3.0'
  s.version = '8.0.5'
  s.source = { :git => 'git@github.com:OpenAPITools/openapi-generator.git', :tag => 'v6.5.2' }
  s.authors = 'OpenAPI Generator'
  s.license = 'Proprietary'
  s.homepage = 'https://www.mailslurp.com'
  s.summary = 'mailslurp Swift SDK'
  s.source_files = 'mailslurp/Classes/**/*.swift'
end
