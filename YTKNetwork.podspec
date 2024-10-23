Pod::Spec.new do |s|

  s.name         = "YTKNetwork"
  s.version      = "3.0.6"
  s.summary      = "YTKNetwork is a high level request util based on AFNetworking."
  s.homepage     = "https://github.com/yuantiku/YTKNetwork"
  s.license      = "MIT"
  s.author       = {
                    "tangqiao" => "tangqiao@fenbi.com",
                    "lancy" => "lancy@fenbi.com",
                    "maojj" => "maojj@fenbi.com",
                    "liujl" => "liujl@fenbi.com",
                    "shangcr" => "shangcr@fenbi.com"
 }
  s.source        = { :git => "https://github.com/yuantiku/YTKNetwork.git", :tag => s.version.to_s }
  s.source_files  = "YTKNetwork/*.{h,m}"
  s.requires_arc  = true

  s.private_header_files = "YTKNetwork/YTKNetworkPrivate.h"
  s.resource_bundles = {
    "YTKNetwork" => 'Resources/PrivacyInfo.xcprivacy'
  }

  search_paths = [
    #Podfile使用指定路径链接
    '${PODS_CONFIGURATION_BUILD_DIR}/AFNetworking'
    ]
    s.pod_target_xcconfig = {
      'CLANG_ALLOW_NON_MODULAR_INCLUDES_IN_FRAMEWORK_MODULES' => 'YES',
      'FRAMEWORK_SEARCH_PATHS' => search_paths,
    }

  s.ios.deployment_target = "9.0"
  s.osx.deployment_target = "10.10"
  s.watchos.deployment_target = "2.0"
  s.tvos.deployment_target = "9.0"
  s.framework = "CFNetwork"
end
