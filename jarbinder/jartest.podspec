Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.0.0'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.1.0'}
  spec.resources            = ['jarbinder/main.template', "jarbinder/lib/*.jar"]
  spec.source_files         = ['jarbinder/src/main/java/*.java', 'jarbinder/xcode/jarbinder/*.{h,m}']
  spec.exclude_files        = ['**/Main.java', '**/AppViewController.java']
  spec.requires_arc         = true
end
