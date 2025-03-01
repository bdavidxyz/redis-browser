require 'sinatra/base'
require 'multi_json'
require 'sinatra/json'
require 'slim'
require 'coffee-script'
require 'redis'
require 'redis-browser/version'
require 'redis-browser/browser'
require 'redis-browser/web'

module RedisBrowser
  DEFAULTS = {
    'connections' => {
      'default' => ENV['REDIS_URL'] || 'redis://127.0.0.1:6379/0'
    }
  }

  def self.configure(opts)
    Web.configure do |config|
      config.set opts
    end
  end
end

RedisBrowser.configure RedisBrowser::DEFAULTS
