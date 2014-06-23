require 'rake'
require 'erb'

BACKUP_DIR_NAME = '.dfbackup'

desc "Install dotfiles into home directory"
task :install do
  excluded_files = %w(Rakefile README.md)
  files = Dir['*'] - excluded_files
  create_backup_folder
  backup_vim_folder
  files.each do |file|
    backup_file(file)
    delete_file(file)
    create_symlink(file)
  end
  install_vundle
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

def backup_vim_folder
  puts 'Creating .vim folder backup'
  system %Q{cp -a "$HOME/.vim" "$HOME/#{BACKUP_DIR_NAME}/.vim"}
  system %Q{rm -rf "$HOME/.vim"}
end

def install_vundle
  system %Q{git clone "https://github.com/gmarik/Vundle.vim.git" "$HOME/.vim/bundle/Vundle.vim"}
  system %Q{vim +PluginInstall +qall}
end

def create_symlink(file)
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
