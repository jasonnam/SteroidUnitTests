Pod::Spec.new do |s|
  s.name         = 'SteroidUnitTests'
  s.version      = '0.1.0'
  s.summary      = 'SteroidUnitTests'
  s.description  = <<-DESC
                   SteroidUnitTests
                   DESC
  s.homepage     = 'https://github.com/jasonnam/SteroidUnitTests'
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { 'jasonnam' => 'contact@jasonnam.com' }

  s.ios.deployment_target = '9.0'

  s.source       = { :path => '.' }
  s.source_files = 'Sources/SteroidUnitTests/**/*.{swift}'
  s.framework    = 'XCTest'
end
