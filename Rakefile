#! /usr/bin/env ruby
#

task :deploy do
  system 'rsync -aP --del _site/ deploy@n3kl.cx:/var/www/cindycolorado.com/'
end

task :build do
  system 'jekyll build'
end

