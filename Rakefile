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

module ZipBuilder
  def self.build_trade_event_zip(root, environment)
    require 'zip'
    zip_file_name = root.join("_dist/trade_event_#{environment}.zip")
    Zip::File.open zip_file_name, Zip::File::CREATE do |zip_file|
      zip_file.add 'css/trade_event.css', root.join('_site/assets/css/trade_event.css')
      zip_file.add 'js/trade_event.min.js', root.join("assets/js/trade_event_#{environment}.min.js")
    end
  end
end

desc 'build staging and production assets zip'
task zip: :build do
  root = Pathname.new File.expand_path('../', __FILE__)
  dist = root.join '_dist'
  FileUtils.remove_dir(dist) if Dir.exists?(dist)
  FileUtils.mkdir root.join('_dist')
  ZipBuilder.build_trade_event_zip root, 'staging'
  ZipBuilder.build_trade_event_zip root, 'production'
end

desc 'build minified Javascript'
task :build do
  `bundle exec jekyll clean`
  `bundle exec jekyll build`

  names = %w(json_renderer trade_lead_mappings trade_lead_development_configuration)
  JSFileConcatenator.concat 'all', *names

  trade_event_filenames = %w(mustache trade_event_mappings trade_event_renderer)
  JSFileConcatenator.concat 'trade_event_production.min', *(trade_event_filenames + ['trade_event_development_configuration'])
  JSFileConcatenator.concat 'trade_event_staging.min', *(trade_event_filenames + ['trade_event_staging_configuration'])
end



RSpec::Core::RakeTask.new(:spec)
task default: [:zip, :spec]
