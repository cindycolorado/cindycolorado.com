#! /usr/bin/env ruby
#

task :deploy do
  system 'rsync -rlt --del _site/ webdeploy@com1.larch.space:/usr/local/www/cindycolorado.com/'
end

task :build do
  system 'jekyll build --incremental'
end

