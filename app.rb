require 'bundler/setup'
Bundler.require

require 'sinatra/chassis/helpers'

require 'sinatra/reloader' if development?

require 'json'

use Rack::Protection, :except => :session_hijacking

enable :sessions
set :session_secret, 'secret123'

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

configure :production do
  before do
    unless request.request_method == 'POST'
      unless request.url.include? "https://www."
        redirect "https://www.dinamecsystems.com#{request.path}"
      end
    end
  end
end

DataMapper.finalize