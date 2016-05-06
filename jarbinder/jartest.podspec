Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.1.6'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.1.6'}
  spec.resources            = ['jarbinder/src/main/java/**/*.java', "jarbinder/lib/*.jar", "jarbinder/gradle/**/*.*", "jarbinder/build.gradle", "jarbinder/gradlew"]
  spec.source_files         = ['jarbinder/xcode/jarbinder/*.{h,m}']
  spec.exclude_files        = ['**/Main.java', '**/AppViewController.java']
  spec.requires_arc         = true
end
