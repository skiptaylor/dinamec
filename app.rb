require 'bundler/setup'
Bundler.require

require 'sinatra/chassis/helpers'

require 'sinatra/reloader' if development?

require 'json'

use Rack::Protection, :except => :session_hijacking

enable :sessions
set :session_secret, 'f7ffa5c23ea736af66ea8364560804c134f3e6c38824ae4e3b0663c18f10d977'

require_directory([
  'config',
  'settings',
  'modules',
  'helpers',
  'libraries',
  'models',
  'controllers',
  'routes'
])

# configure :production do
#   before do
#     unless request.request_method == 'POST'
#       unless request.url.include? "https://www."
#         redirect "https://www.dinamecsystems.com#{request.path}"
#       end
#     end
#   end
# end

DataMapper.finalize