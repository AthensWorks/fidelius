#
# Be sure to run `pod lib lint Fidelius.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'Fidelius'
  s.version          = '0.1.0'
  s.summary          = 'Use secrets.ejson (and decrypt) for the securest of apps'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
Place a secrets.ejson file into your project directory and your keys in ~/.ejson_keys and then you're off to the races.
                       DESC

  s.homepage         = 'https://github.com/AthensWorks/fidelius'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'benlachman' => 'blachman@mac.com' }
  s.source           = { :git => 'https://github.com/AthensWorks/fidelius.git', :tag => s.version.to_s }
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'Fidelius/Classes/**/*'
  s.preserve_paths = "decrypt.rb"
  # s.resource = "Fidelius/*.rb"
  # s.resource_bundles = {
  #   'Fidelius' => ['Fidelius/*.rb']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
