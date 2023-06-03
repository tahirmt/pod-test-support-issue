Pod::Spec.new do |spec|

  spec.name         = "MainTestSupport"
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
  spec.source       = { :git => "http://notaurl.com", :tag => "#{spec.version}" }
  spec.dependency 'Main/Core'
  spec.source_files  = "Sources/TestSupport/**/*.swift"

end
