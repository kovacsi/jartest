Pod::Spec.new do |spec|
  spec.name                 = 'jartest'
  spec.version              = '1.0.0'
  spec.homepage             = "https://github.com/kovacsi/jartest/"
  spec.license              = { :type => 'EPL', :file => 'LICENSE.txt' }
  spec.author               = { "Migeran" => "support@migeran.com" }
  spec.summary              = 'Simple cocoapods test'
  spec.platform             = :ios, "8.4"
  spec.source               = { :git => 'https://github.com/kovacsi/jartest.git', :tag => '1.0.0' }
  spec.source_files         = '**/*.{h,m}'
  spec.weak_framework       = 'MOE'
  spec.pod_target_xcconfig = {
'XRT_APPLICATION_OAT' => '-sectcreate __OATDATA __oatdata "${SRCROOT}/art/${arch}/application.oat"',
'XRT_APPLICATION_ART' => '-sectcreate __ARTDATA __artdata "${SRCROOT}/art/${arch}/image.art"',
'XRT_APPLICATION_PROTECTION_FLAGS[sdk=iphoneos*]' => '-segprot __OATDATA rx rx -segprot __ARTDATA rw rw',
'XRT_APPLICATION_PROTECTION_FLAGS[sdk=iphonesimulator*]' => '-segprot __OATDATA rwx rx -segprot __ARTDATA rwx rw -pagezero_size 1000',
'XRT_APPLICATION_PROTECTION_FLAGS[sdk=macosx*]' => '-segprot __OATDATA rwx rx -segprot __ARTDATA rw rw',
'XRT_ART_FLAGS' => '${XRT_APPLICATION_OAT} ${XRT_APPLICATION_ART} ${XRT_APPLICATION_PROTECTION_FLAGS}',
'XRT_OTHER_LDFLAGS' => '${XRT_ART_FLAGS} -lstdc++',
'XRT_FRAMEWORK_PATH[sdk=iphonesimulator*]' => '${INTEL_MULTI_OS_ENGINE_HOME}/sdk/iphonesimulator',
'XRT_FRAMEWORK_PATH[sdk=iphoneos*]' => '${INTEL_MULTI_OS_ENGINE_HOME}/sdk/iphoneos'
  }
  spec.requires_arc         = true
end
