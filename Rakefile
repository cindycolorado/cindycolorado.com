#! /usr/bin/env ruby
#

task :deploy do
  system 'rsync -aP --del _site/ webdeploy@cindycolorado.com:/usr/local/www/cindycolorado.com/'
end

task :build do
  system 'jekyll build --incremental'
end

