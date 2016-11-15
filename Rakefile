require 'rubygems'
require 'bundler'
require 'rake'

require 'rspec/core/rake_task'

module JSFileConcatenator
  def self.concat(target_name, *source_names)
    require 'pathname'
    require 'uglifier'
    root = Pathname.new File.expand_path('../', __FILE__)
    js_root = root.join('_site/assets/js')
    source = source_names.map do |name|
      js_root.join("#{name}.js").read
    end.join("\n")

    File.open(root.join("assets/js/#{target_name}.js"), 'w') do |f|
      f.puts '/*** AUTO GENERATED FILE - DO NOT EDIT ***/'
      f.puts Uglifier.compile source
    end
  end
end

desc 'build minified Javascript'
task :build do
  `bundle exec jekyll clean`
  `bundle exec jekyll build`

  names = %w(json_renderer trade_lead_mappings trade_lead_development_configuration)
  JSFileConcatenator.concat 'all', *names

  names = %w(mustache trade_event_mappings trade_event_renderer trade_event_development_configuration)
  JSFileConcatenator.concat 'trade_event_all', *names
end

RSpec::Core::RakeTask.new(:spec)
task default: [:build, :spec]
