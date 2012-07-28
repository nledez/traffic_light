# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "traffic_light"
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Nicolas Ledez"]
  s.date = "2012-07-28"
  s.description = "Drive a traffic light with an Arduino."
  s.email = "rubygems@ledez.net"
  s.extra_rdoc_files = ["README.rdoc", "lib/traffic_light.rb"]
  s.files = ["Arduino/traffic_light/traffic_light.ino", "Guardfile", "README.rdoc", "Rakefile", "lib/traffic_light.rb", "spec/spec_helper.rb", "spec/traffic_light_spec.rb", "Manifest", "traffic_light.gemspec"]
  s.homepage = "http://github.com/nledez/traffic_light"
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Traffic_light", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = "traffic_light"
  s.rubygems_version = "1.8.23"
  s.summary = "Drive a traffic light with an Arduino."

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
