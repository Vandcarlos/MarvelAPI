#
# Be sure to run `pod lib lint MarvelAPI.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'MarvelAPI'
  s.version          = '0.1.0'
  s.summary          = 'A short description of MarvelAPI.'
  s.swift_version    = '5.2'
  s.ios.deployment_target = '12.0'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = "API"

  s.homepage         = 'https://github.com/vandcarlosjunior@gmail.com/MarvelAPI'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'vandcarlosjunior@gmail.com' => 'vandcarlosjunior@gmail.com' }
  s.source           = { :git => 'https://github.com/vandcarlosjunior@gmail.com/MarvelAPI.git', :tag => s.version.to_s }


  s.source_files = 'MarvelAPI/Classes/**/*'
end
