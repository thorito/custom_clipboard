#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'custom_clipboard_ios'
  s.version          = '0.0.2'
  s.summary          = 'An iOS implementation of the custom_clipboard plugin.'
  s.description      = <<-DESC
  An iOS implementation of the custom_clipboard plugin.
                       DESC
  s.homepage         = 'https://github.com/thorito/custom_clipboard'
  s.license          = { :type => 'MIT', :file => '../LICENSE' }
  s.author           = { 'Thorito' => 'thorito@example.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.dependency 'Flutter'
  s.platform = :ios, '9.0'

  s.pod_target_xcconfig = {
    'DEFINES_MODULE' => 'YES',
    'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386',
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES'
  }
  s.swift_version = '5.0'
end
