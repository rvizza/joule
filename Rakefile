require 'rake'
require 'rake/testtask'
require 'rake/rdoctask'

require 'rake/gempackagetask'

task :default => [:test]

desc 'Test Joule.'
Rake::TestTask.new(:test) do |t|
  t.libs << 'lib'
  t.libs << 'test/lib'
  t.pattern = 'test/**/*test.rb'
  t.verbose = true
end

Rake::GemPackageTask.new(spec) do |pkg|
  pkg.need_tar = true
end

Rake::RDocTask.new do |doc|
  doc.main = "README.rdoc"
  doc.rdoc_files.include("README.rdoc", "lib/**/*.rb")
  doc.rdoc_dir = "doc"
end


