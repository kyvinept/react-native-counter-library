require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-counter-library"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = <<-DESC
                  react-native-counter-library
                   DESC
  s.homepage     = "https://github.com/github_account/react-native-counter-library"
  s.license      = "MIT"
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.authors      = { "Your Name" => "yourname@email.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/kyvinept/react-native-counter-library.git" }

  s.source_files = 'ios/**/*.{h,m,swift}'
  s.resource = "ios/**/*.{bundle,xib,plist}"

  #  s.resource_bundles = {
  #    'Resources' => ['ios/**/*.xib']
  #  }
  
  s.dependency "React"
  # ...
  # s.dependency "..."
end

