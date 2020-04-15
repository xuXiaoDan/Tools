# Uncomment the next line to define a global platform for your project
platform :ios, '11.0'
source 'https://github.com/CocoaPods/Specs.git'
install! 'cocoapods',
    :generate_multiple_pod_projects => true,
    :disable_input_output_paths => true

def share_pods
  pod 'Home', :path =>'libs/Home'
  pod 'Base', :path =>'libs/Base'
  pod 'Mine', :path =>'libs/Mine'
  pod 'demo', :path =>'libs/demo'
end

def develop_pods
 # pod 'DoraemonKit'
end

def release_pods
end


target 'Tool' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  
  # Pods for Tool
  share_pods
  develop_pods
end

#target 'Tool copy' do
  
  #use_frameworks!
 # share_pods
 # release_pods
#end
