
Pod::Spec.new do |spec|


spec.name         	= "QMOpenApiSDK"
spec.version      	= "1.1.4"
spec.summary      	= "The Official iOS SDK of QQMusic Open API."
spec.license      	= "MIT"
spec.author       	= { "wszcug" => "272327827@qq.com" }
spec.homepage     	= "https://github.com/wszcug/QMOpenApiSDK"
spec.documentation_url 	= 'https://github.com/wszcug/QMOpenApiSDK'
spec.source       	= { :git => "https://github.com/wszcug/QMOpenApiSDK.git", :tag => "#{spec.version}" }

spec.platform     	= :ios, "10.0"
spec.requires_arc 	= true

spec.frameworks 		= 'SystemConfiguration', 'Security', 'CoreGraphics', 'AVFoundation', 'CoreTelephony', 'WebKit'
spec.libraries 		= 'z', 'c++', 'sqlite3.0', 'iconv'

spec.vendored_frameworks 	= 'QMOpenApiSDK.framework'
 
spec.xcconfig	   	= { 'OTHER_LDFLAGS' => '-ObjC -all_load -fobjc-arc' }

spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

spec.dependency 'UMShare/Social/WeChat'

end
