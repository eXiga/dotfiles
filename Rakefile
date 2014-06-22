require 'rake'
require 'erb'

desc "Install dotfiles into home directory"
task :install do
  excluded_files = %w(Rakefile README.md)
  files = Dir['*'] - excluded_files
  files.each do |file|
    delete_file(file)
    create_symlink(file)
  end
end

def delete_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
end

def create_symlink(file)
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
