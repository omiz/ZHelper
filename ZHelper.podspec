Pod::Spec.new do |s|

  s.name = "Zhelper"
  s.version = "0.1.0"
  s.license = { :type => "MIT", :file => "LICENSE" }
  s.summary = "Helper methods in swift"
  s.homepage = "https://github.com/omiz/ZHelper"
  s.author = { "Omar Allaham" => "o.allaham@icloud.com" }
  s.source = { :git => 'https://github.com/omiz/ZHelper.git', :tag => s.version.to_s }

  s.platform     = :ios, "8.0"

  s.requires_arc = 'true'
  s.source_files = 'Zhelper/*.swift'

end