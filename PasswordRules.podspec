Pod::Spec.new do |s|

  s.name         = "PasswordRules"
  s.version      = "1.0.0"
  s.summary      = "A Swift library for defining strong password generation rules."

  s.description  = "A Swift library for defining strong password generation rules. https://nshipster.com/uitextinputpasswordrules/"

  s.homepage     = "https://nshipster.com/uitextinputpasswordrules/"

  s.license      = { :type => "MIT", :file => "LICENSE.md" }

  s.author       = { "NSHipster" => "info@nshipster.com" }
  
  s.platform     = :ios, "12.0"

  s.source       = { :git => "https://github.com/NSHipster/PasswordRules.git", :tag => s.version.to_s }

  s.source_files  = "Sources/**/*.{swift}"
  # s.public_header_files = "Sources/**/*.{h}"
end
