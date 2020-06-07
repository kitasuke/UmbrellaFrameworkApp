source "https://cdn.cocoapods.org/"

install! 'cocoapods', :generate_multiple_pod_projects => true, incremental_installation: true

platform :ios, '13.0'

use_frameworks! :linkage => :static

workspace 'UmbrellaApp'

project 'UmbrellaApp'

target 'UmbrellaApp' do

  pod 'Firebase/Analytics'
  pod 'Firebase/Crashlytics'
  pod 'Firebase/Messaging'

  target 'UmbrellaAppTests' do
    inherit! :search_paths
  end
end

target 'UmbrellaFramework' do
  project 'UmbrellaFramework/UmbrellaFramework'

  pod 'RxSwift'
  pod 'RxRelay'
  pod 'RxCocoa'
  pod 'SwiftGRPC'

  target 'UmbrellaTestsFramework' do
    inherit! :search_paths
    pod 'RxTest'
  end
end

post_install do |installer|
  work_dir = Dir.pwd
  installer.aggregate_targets.each do |target|
    target.user_build_configurations.each do |key, name|
      xcconfig_filename = "#{work_dir}/Pods/Target Support Files/#{target}/#{target}.#{name}.xcconfig"
      xcconfig = File.read(xcconfig_filename)
      framework_search_paths = xcconfig.match(/(?<=FRAMEWORK_SEARCH_PATHS = )(.*)/)
      header_search_paths = xcconfig.match(/(?<=HEADER_SEARCH_PATHS = )(.*)/)
      other_ldflags = xcconfig.match(/(?<=OTHER_LDFLAGS = )(.*)/)

      # use these PODS prefix variables to override in xcconfig if frameworks are implicitly linked
      File.open(xcconfig_filename, "a") do |file|
        file.puts("PODS_FRAMEWORK_SEARCH_PATHS = #{framework_search_paths}")
        file.puts("PODS_HEADER_SEARCH_PATHS = #{header_search_paths}")
        file.puts("PODS_OTHER_LDFLAGS = #{other_ldflags}")
      end
    end
  end
end
