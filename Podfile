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
