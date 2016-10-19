Pod::Spec.new do |s|
  s.name = 'BaseViewControllerSwift'
  s.version = '2.0.0'
  s.license = 'MIT'
  s.summary = 'An organizational tool for writing custom view controllers using UIKit.'
  s.homepage = 'https://github.com/ustwo/baseviewcontroller-swift'
  s.authors = { 'Shagun Madhikarmi' => 'shagun@ustwo.com',
                'Aaron McTavish' => 'aamct@ustwo.com' }
  s.source = { :git => 'https://github.com/ustwo/baseviewcontroller-swift.git', :tag => s.version }

  s.ios.deployment_target = '8.3'
  s.tvos.deployment_target = '9.0'

  s.source_files = 'Sources/*.swift'

  s.frameworks = 'Foundation', 'UIKit'

  s.requires_arc = true
end
