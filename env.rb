unless File.exists? './config.yml'
  puts 'Please provide a config.yml file.'
  exit false
end

require 'yaml'

SiteConfig = YAML.load_file('config.yml')

DB = PG.connect({ 
  :host => SiteConfig['db']['host'],
  :port => SiteConfig['db']['port'], 
  :user => SiteConfig['db']['user'],
  :dbname => SiteConfig['db']['name']
})
