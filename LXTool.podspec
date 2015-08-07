Pod::Spec.new do |s|
s.name = 'LXTool'
s.version = '0.0.5'
s.license = 'MIT'
s.summary = 'Here are some useful methods!'
s.homepage = 'https://github.com/LX314/LXTool'
s.author = { 'Lucky' => 'lx314333@gmail.com' }
s.source = { :git => 'https://github.com/LX314/LXTool.git', :tag => s.version.to_s }
s.platform = :ios ,'4.3'
s.requires_arc = true 

s.public_header_files = 'LXTool.h'
s.source_files = 'LXTool.h'
s.framework = 'UIKit','Foundation'

s.subspec 'Base' do |ss|
	ss.source_files = 'LXTool/Base/*'
	ss.dependency 'LXTool/Macro'
	ss.dependency 'LXTool/Colours'
end

s.subspec 'Colours' do |ss|
	ss.source_files = 'LXTool/Colours/*'

end

s.subspec 'Macro' do |ss|
	ss.source_files = 'LXTool/Macro.h'
end

s.subspec 'Category' do |ss|
	ss.source_files = 'LXTool/Category/*'
end

s.subspec 'Description' do |ss|
	ss.source_files = 'LXTool/Category/Description/*'
#	ss.ios.frameworks = 'MobileCoreServices', 'CoreGraphics'
end

end

 
