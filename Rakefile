require "rubygems"
require "bundler/setup"
require "stringex"

## -- Rsync Deploy config -- ##
# Be sure your public key is listed in your server's ~/.ssh/authorized_keys file
ssh_user       = "wwwandxyz@writings.andxyz.com"
ssh_port       = "22"
document_root  = "/home/wwwandxyz/website/"
rsync_delete   = false
compiled_site_dir = "_site"

##############
# Deploying  #
##############

desc "Default deploy task"
task :deploy do
  exclude = ""
  if File.exists?('./rsync-exclude')
    exclude = "--exclude-from '#{File.expand_path('./rsync-exclude')}'"
  end
  puts "## Deploying website via Rsync"
  ok_failed system("rsync -avze 'ssh -p #{ssh_port}' #{exclude} #{"--delete" unless rsync_delete == false} #{compiled_site_dir}/ #{ssh_user}:#{document_root}")
end
