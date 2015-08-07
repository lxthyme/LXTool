Pod::Spec.new do |s|
s.name = 'LXTool'
s.version = '0.0.1'
s.license = 'MIT'
s.summary = 'Here are some useful methods!'
s.homepage = 'https://github.com/LX314/LXTool'
s.author = { 'Lucky' => 'lx314333@gmail.com' }
s.source = { :git => 'https://github.com/LX314/LXTool.git', :tag => s.version.to_s }
s.platform = :ios ,'4.3'
s.source_files = 'Macro.h','Base/*','Colours/*'
s.requires_arc = true 
end

 
