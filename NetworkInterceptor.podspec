
Pod::Spec.new do |s|
  s.name             = "NetworkInterceptor"
  s.version          = "0.0.9"
  s.swift_version    = '4.2'
  s.summary          = "Intercepting Network Requests"
  s.description      = <<-DESC
Features
1. Observe all outgoing URLRequests, including SSL pinned
2. Ability to redirect URLRequests to any target domain or URL
DESC
  s.homepage         = "https://github.com/DriverTechnologies/NetworkInterceptor"
  s.license          = 'MIT'
  s.author           = { "depoon" => "de_poon@hotmail.com" }
  s.source           = { :git => "https://github.com/DriverTechnologies/NetworkInterceptor.git", :tag => s.version.to_s }

  s.platform     = :ios, '10.0'
  s.requires_arc = true

  s.source_files = 'NetworkInterceptor/Source/**/*'
  s.dependency 'GzipSwift', '4.1.0'
  s.dependency 'URLRequest-cURL'
end
