
task :default do
  system "rake -T"
end

desc "Initial Travis env"
task :init_travis do |task|
  system "travis env set DOCKER_EMAIL #{prompt('Whats your Docker Hub email?')}"
  system "travis env set DOCKER_USERNAME #{prompt('Whats your Docker Hub username?')}"
  system "travis env set DOCKER_PASSWORD #{prompt('Whats your Docker Hub password?')}"
end

def prompt(msg)
  print "#{msg}: "
  $stdin.gets.chomp
end
