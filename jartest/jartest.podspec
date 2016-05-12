Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.2.2'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.2.2'}
  spec.resources            = ['jartest/src/main/java/**/*.java', 'jartest/lib/*.jar', 'jartest/gradle/**/*.*', 'jartest/build.gradle', 'jartest/gradlew', 'jartest/xcode/jartest/*.xcconfig' 'jartest/Info.plist']
  spec.source_files         = ['jartest/xcode/jartest/*.{h,m}']
  spec.exclude_files        = ['**/AppViewController.java']
  spec.requires_arc         = true
end
