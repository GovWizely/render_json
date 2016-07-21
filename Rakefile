require 'rubygems'
require 'bundler'
require 'rake'

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
  task default: [:spec]
rescue LoadError
end

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
    f.puts Uglifier.compile source
  end
end
