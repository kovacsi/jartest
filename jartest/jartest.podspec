Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.1.8'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.1.8'}
  spec.resources            = ['jartest/src/main/java/**/*.java', "jartest/lib/*.jar", "jartest/gradle/**/*.*", "jartest/build.gradle", "jartest/gradlew"]
  spec.source_files         = ['jartest/xcode/jartest/*.{h,m,xcconfig}']
  spec.requires_arc         = true
end
