platform :ios, '11.0'
use_frameworks!

target 'PhillyBikeDock-VIPER' do
  pod 'Kingfisher'
  pod 'R.swift'
  pod 'RxSwift'
  pod 'PKHUD', '~> 5.0'
  pod 'ObjectMapper'
    target 'PhillyBikeDock-VIPERTests' do
      inherit! :search_paths
      pod 'Nimble'
    end
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    puts "#{target.name}"
  end
end

