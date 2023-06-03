Pod::Spec.new do |spec|

  spec.name         = "Main"
  spec.version      = "0.0.1"
  spec.summary      = "Demonstrating test support problem"

  spec.description  = <<-DESC
  Code to help demonstrate a problem
                   DESC

  spec.homepage     = "http://nourl.com"
  spec.license      = { :type => "copyright" }
  spec.author             = { "Mahmood Tahir" => "mahmood.tahir@thescore.com" }
  spec.platform     = :ios
  spec.platform     = :ios, "14.0"
  spec.source       = { :git => "https://github.com/tahirmt/pod-test-support-issue.git", :tag => "#{spec.version}" }
  spec.default_subspecs = 'Core'

  spec.subspec 'Core' do |ss|
    ss.source_files  = "Sources/Main/**/*.swift"
  end

  # Using this does not work because test target cannot depend on it without main target also depending on it
  spec.subspec 'TestSupport' do |ss|
    ss.dependency 'Main/Core'
    ss.source_files  = "Sources/Main/**/*.swift"
  end

end
