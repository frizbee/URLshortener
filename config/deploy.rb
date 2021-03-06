# config valid only for current version of Capistrano
lock '3.5.0'

set :application, 'shortener'
set :user, 'frizbee'
set :repo_url, 'git@github.com:frizbee/URLshortener.git'

set :branch, "master"
set :deploy_to, "/home/#{fetch(:user)}/www/#{fetch(:application)}"

set :rbenv_path, "/home/#{fetch(:user)}/.rbenv/"


# Default value for :linked_files is []
set :linked_files, fetch(:linked_files, []).push('config/mongoid.yml', 'config/secrets.yml')

# Default value for linked_dirs is []
 set :linked_dirs, fetch(:linked_dirs, []).push('log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system')

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
 set :keep_releases, 5

namespace :deploy do

  after :restart, :clear_cache do
    on roles(:web), in: :groups, limit: 3, wait: 10 do
      # Here we can do anything such as:
      # within release_path do
      #   execute :rake, 'cache:clear'
      # end
    end
  end

end
