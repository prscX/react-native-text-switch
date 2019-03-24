
Pod::Spec.new do |s|
  s.name         = "RNTextSwitch"
  s.version      = "1.0.0"
  s.summary      = "RNTextSwitch"
  s.description  = <<-DESC
                  RNTextSwitch
                   DESC
  s.homepage     = ""
  s.license      = "MIT"
  # s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/author/RNTextSwitch.git", :tag => "master" }
  s.source_files  = "RNTextSwitch/**/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  #s.dependency "others"

end

  