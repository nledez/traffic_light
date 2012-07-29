require 'rubygems'
require 'rake'
require 'echoe'

Echoe.new('traffic_light', '0.2.0') do |p|
  p.description    = "Drive a traffic light with an Arduino."
  p.url            = "http://github.com/nledez/traffic_light"
  p.author         = "Nicolas Ledez"
  p.email          = "rubygems@ledez.net"
  p.ignore_pattern = ["tmp/*", "script/*"]
  p.development_dependencies = []
  p.runtime_dependencies = [ "serialport" ]
end

Dir["#{File.dirname(__FILE__)}/tasks/*.rake"].sort.each { |ext| load ext }
