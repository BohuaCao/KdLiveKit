Pod::Spec.new do |s|
  s.name         = "KdLiveKit"
  s.version      = "1.1"
  s.summary      = "Kandao ios Live. KdLiveKit."
  s.homepage     = "https://www.kandaovr.com"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "BorisCao" => "boriscao@me.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/BohuaCao/KdLiveKit.git", :tag => "#{s.version}" }
  s.source_files  = "LFLiveKit/**/*.{h,m,mm,cpp,c}"
  s.public_header_files = ['LFLiveKit/*.h', 'LFLiveKit/objects/*.h', 'LFLiveKit/configuration/*.h']

  s.frameworks = "VideoToolbox", "AudioToolbox","AVFoundation","Foundation","UIKit"
  s.libraries = "c++", "z"

  s.pod_target_xcconfig = { 'HEADER_SEARCH_PATHS' => '${PODS_ROOT}/Headers/Private/OpenSSL_Universal/** ${PODS_ROOT}/Headers/Public/OpenSSL_Universal/**' }

  s.dependency 'OpenSSL-Universal', '1.0.2.17'
  s.static_framework = true
  s.requires_arc = true
end
