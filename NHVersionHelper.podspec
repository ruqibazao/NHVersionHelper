#
#  Be sure to run `pod spec lint NHVersionHelper.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|
  s.name         = "NHVersionHelper"
  s.version      = "1.0.1"
  s.summary      = "iOS 检测版本升级工具"
  s.description  = <<-DESC
  iOS 从app store检测版本升级工具
                   DESC
  s.homepage     = "https://github.com/neghao/NHVersionHelper"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "neghao" => "neghao@162.com" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/neghao/NHVersionHelper.git",  :tag => s.version.to_s }
  s.source_files  = "NHVersionHelper/*.{h,m}"
end
