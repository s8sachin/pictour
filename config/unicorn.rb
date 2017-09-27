# set path to application
# set path to application
app_dir = File.expand_path("/home/deploy/u01/apps/qwinix/production-sunil/current", __FILE__)
#shared_dir = "#{app_dir}/shared"
working_directory "/home/deploy/u01/apps/qwinix/production-sunil/current"


# Set unicorn options
worker_processes 2
preload_app true
timeout 30
rails_env = 'production'

# Set up socket location
listen "/home/deploy/u01/apps/qwinix/production-sunil/shared/sockets/unicorn.sock", :backlog => 64

# Logging
stderr_path "/home/deploy/u01/apps/qwinix/production-sunil/current/log/unicorn.stderr.log"
stdout_path "/home/deploy/u01/apps/qwinix/production-sunil/current/log/unicorn.stdout.log"

# Set master PID location
pid "/home/deploy/u01/apps/qwinix/production-sunil/shared/pids/unicorn.pid"