require 'rubygems'
require 'bundler'
require 'rake'

require 'rspec/core/rake_task'

desc 'build minified Javascript'
task :build do
  `bundle exec jekyll clean`
  `bundle exec jekyll build`

  require 'pathname'
  require 'uglifier'
  names = %w(mappings configure json_renderer)
  root = Pathname.new File.expand_path('../', __FILE__)
  js_root = root.join('_site/assets/js')
  source = names.map do |name|
    js_root.join("#{name}.js").read
  end.join("\n")

  File.open(root.join('assets/js/all.js'), 'w') do |f|
    f.puts '/*** AUTO GENERATED FILE - DO NOT EDIT ***/'
    f.puts Uglifier.compile source
  end
end

RSpec::Core::RakeTask.new(:spec)
task default: [:build, :spec]
