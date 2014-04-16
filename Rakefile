require "bundler/gem_tasks"

desc "Delete gem files"
task :delete_gem do
  sh "rm -f rulers-0.*"
end

desc "Uninstall rulers gem"
task :cleanup_rulers do
  `gem cleanup rulers -V`
end

desc "Show Gem List"
task :show_gems do
  sh "gem list"
end

desc "Build Gem"
task :build_gem do
  sh "gem build rulers.gemspec"
end

desc "Install rulers"
task :install_rulers => [:delete_gem, :show_gems, :build_gem] do
  sh "gem install rulers"
  Rake::Task["cleanup_rulers"].invoke
end


