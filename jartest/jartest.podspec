Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.2.3'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.2.3'}
  spec.source_files         = ['jartest/xcode/jartest/*.{h,m}']
  spec.resources            = ['jartest/src/main/java/**/*.java', 'jartest/lib/*.jar', 'jartest/gradle/**/*.*', 'jartest/build.gradle', 'jartest/gradlew', 'jartest/xcode/jartest/*.xcconfig']
  spec.exclude_files        = ['**/AppViewController.java', '**/AppDelegate.{h,m}', '**/main.cpp']
  spec.requires_arc         = true
end
