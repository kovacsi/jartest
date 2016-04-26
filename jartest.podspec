Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.0.0'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.0.0' }
  spec.source_files         = '*'
  spec.requires_arc         = true
end
