require 'rake'
require 'erb'

BACKUP_DIR_NAME = '.dfbackup'

desc "Install dotfiles into home directory"
task :install do
  excluded_files = %w(Rakefile README.md)
  files = Dir['*'] - excluded_files
  create_backup_folder
  files.each do |file|
    backup_file(file)
    delete_file(file)
    create_symlink(file)
  end
end

def delete_file(file)
  system %Q{rm -rf "$HOME/.#{file}"}
end

def create_backup_folder
  system %Q{mkdir "$HOME/#{BACKUP_DIR_NAME}"}
end

def backup_file(file)
  system %Q{cp -av "$HOME/.#{file}" "$HOME/#{BACKUP_DIR_NAME}/.#{file}"}
end

def create_symlink(file)
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
