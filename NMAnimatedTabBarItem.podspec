#
# Be sure to run `pod lib lint NMAnimatedTabBarItem.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'NMAnimatedTabBarItem'
  s.version          = '1.0.0'
  s.summary          = 'This CocoaPod library provides Tab Bar Item animation in a simple way.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
NMAnimatedTabBarItem is a Swift based UI module library for adding animation to iOS tabbar items and icons. iOS library made by @Namshi.
                       DESC

  s.homepage         = 'https://github.com/namshi/NMAnimatedTabBarItem'
  s.screenshots     = 'https://github.com/namshi/NMAnimatedTabBarItem/blob/master/Example/NMAnimatedTabBarItem/Images/NMAnimatedTabBarItem.gif'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Namshi General Trading L.L.C' => 'mobile-dev@namshi.com' }
  s.source           = { :git => 'https://github.com/namshi/NMAnimatedTabBarItem.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'
  s.swift_version = '4.1 '

  s.source_files = 'Classes/*'
  
  # s.resource_bundles = {
  #   'NMAnimatedTabBarItem' => ['NMAnimatedTabBarItem/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end
