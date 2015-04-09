Pod::Spec.new do |s|
  s.name         = "VZDateFormatter"
  s.version      = "0.0.2"
  s.summary      = "Date formatter whith several usefull methods"
  s.description  = "Date formatter whith several usefull methods for me"
  s.homepage     = "https://github.com/alekoleg/VZDateFormatter"
  s.license      = 'MIT'
  s.author       = { "Oleg Alekseenko" => "alekoleg@gmail.com" }
  s.source       = { :git => "https://github.com/alekoleg/VZDateFormatter.git", :tag => s.version.to_s}
  s.platform     = :ios, '6.0'
  s.requires_arc = true

  s.source_files = 'Classes/*.{h,m}'
 
  s.frameworks = 'Foundation', 'UIKit'
  
end
