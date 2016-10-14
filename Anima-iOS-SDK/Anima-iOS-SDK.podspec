Pod::Spec.new do |s|
  s.name             = "Anima-iOS-SDK"
  s.version          = "0.1.0"
  s.summary          = "Anima SDK | AnimaApp.com"
  s.description      = <<-DESC
                       Our iOS SDK is a light-weight code to support your designs.
                       DESC
  s.homepage         = "http://www.AnimaApp.com"
  s.license          = "MIT"
  s.author           = { "Anima Team" => "team@animaapp.com" }
  s.platform         = :ios
  s.source           = { :git => "https://github.com/AnimaStudio/AnimaSDK-iOS.git", :tag => "#{s.version}" }
  s.source_files     = "*.{h,m}"
  s.requires_arc     = true
end
