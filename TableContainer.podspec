

Pod::Spec.new do |s|


  s.name         = "TableContainer"
  s.version      = "1.0.0"
  s.summary      = "TableContainer framework"
  s.description  = "TableContainer framework"
  s.homepage     = "http://EXAMPLE/TableContainer"
  s.license      = "TableContainer"
  s.author       = { "Ivankov Alexey" => "" }
  s.module_name = 'TableContainer'

	s.ios.deployment_target = "8.0"
	s.osx.deployment_target = "10.7"
	s.watchos.deployment_target = "2.0"
	s.tvos.deployment_target = "9.0"


  s.source       = { :git => 'https://github.com/alexeyIvankov/TableDataSource.git', :branch => 'master'}

  s.source_files  = "TableContainer/**/*.{swift}"
 

end
