Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.1.3'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.1.3'}
  spec.resources            = ['jarbinder/buildscript', "jarbinder/lib/*.jar"]
  spec.source_files         = ['jarbinder/src/main/java/**/*.java', 'jarbinder/xcode/jarbinder/*.{h,m}']
  spec.exclude_files        = ['**/Main.java', '**/AppViewController.java']
  spec.requires_arc         = true
end
