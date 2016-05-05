Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.0.0'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git' }
  spec.resources            = ['main.template', "lib/*.jar"]
  spec.source_files         = ['src/main/java/*.java', 'xcode/jarbinder/*.{h,m}']
  spec.exclude_files        = ['**/Main.java', '**/AppViewController.java']
  spec.requires_arc         = true
end
