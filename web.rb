require 'sinatra'

configure :production do
  require 'newrelic_rpm'
end

get '/' do
  send_file File.expand_path('index.html', settings.public_folder)
end
