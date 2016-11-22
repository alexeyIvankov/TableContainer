

Pod::Spec.new do |s|


  s.name         = "TableDataSource"
  s.version      = "1.0.0"
  s.summary      = "TableDataSource framework"
  s.description  = "TableDataSource framework"
  s.homepage     = "http://EXAMPLE/TableDataSource"
  s.license      = "TableDataSource"
  s.author       = { "Ivankov Alexey" => "" }
  s.module_name = 'TableDataSource'

	s.ios.deployment_target = "8.0"
	s.osx.deployment_target = "10.7"
	s.watchos.deployment_target = "2.0"
	s.tvos.deployment_target = "9.0"


  s.source       = { :git => 'https://github.com/alexeyIvankov/TableDataSource.git', :branch => 'master'}

  s.source_files  = "TableDataSource/**/*.{swift}"
 

end
