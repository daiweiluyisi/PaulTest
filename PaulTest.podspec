

Pod::Spec.new do |s|


  s.name         = "PaulTest"
  s.version      = "1.0"
  s.summary      = "测试能不能上传"
  s.description  = "this is null program, yes it's my first submit"
  s.homepage     = "https://github.com/daiweiluyisi/PaulTest"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "daiweiluyisi" => "lcs199011@163.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :git => "https://github.com/daiweiluyisi/PaulTest.git", :tag => "#{s.version}" }
  s.source_files  =  "PaulTest/*"
  s.requires_arc = true

end
