# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run the gemspec command
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{objectreload-simple_enumerations}
  s.version = "0.1.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Mariusz Pietrzyk", "Mateusz Drozdzynski"]
  s.date = %q{2010-03-24}
  s.description = %q{Provides simple and clean enumerations system for rails apps. Enumerations are defined in one file and stored in the database, as strings.}
  s.email = %q{gems@objectreload.com}
  s.extra_rdoc_files = [
    "LICENSE",
     "README.markdown"
  ]
  s.files = [
    ".gitignore",
     "LICENSE",
     "README.markdown",
     "Rakefile",
     "VERSION.yml",
     "generators/enumerations/enumerations_generator.rb",
     "generators/enumerations/templates/enumerations.yml",
     "init.rb",
     "install.rb",
     "lib/simple_enumerations.rb",
     "lib/simple_enumerations/form_helper.rb",
     "lib/simple_enumerations/simple_enumerations.rb",
     "lib/simple_enumerations/symbol_extension.rb",
     "objectreload-simple_enumerations.gemspec",
     "rails/init.rb",
     "spec/app_root/app/models/group.rb",
     "spec/app_root/app/views/cars/new.html.erb",
     "spec/app_root/config/enumerations.yml",
     "spec/app_root/db/schema.rb",
     "spec/form_helper_spec.rb",
     "spec/simple_enumerations_spec.rb",
     "spec/spec_helper.rb",
     "tasks/simple_enumerations_tasks.rake",
     "uninstall.rb"
  ]
  s.homepage = %q{http://github.com/objectreload/simple_enumerations}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.6}
  s.summary = %q{Simple enumerations system for rails apps}
  s.test_files = [
    "spec/app_root/app/models/group.rb",
     "spec/app_root/db/schema.rb",
     "spec/form_helper_spec.rb",
     "spec/simple_enumerations_spec.rb",
     "spec/spec_helper.rb"
  ]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rspec>, [">= 0"])
    else
      s.add_dependency(%q<rspec>, [">= 0"])
    end
  else
    s.add_dependency(%q<rspec>, [">= 0"])
  end
end

