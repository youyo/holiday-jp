#!/usr/bin/env ruby
# coding: utf-8
$LOAD_PATH.unshift File.expand_path "../lib", File.dirname(__FILE__)

require 'sinatra/base'
require 'yaml'
require 'erb'
require 'haml'
require File.dirname( __FILE__ ) + '/api.rb'

class App < Sinatra::Base

  configure do
    # set views dir
    set :views, (File.expand_path "../views", File.dirname(__FILE__))
    # database setting
  end

  configure :development do
    require 'pp'
    # use Rack::Lineprof
    require 'rack-lineprof'
    use Rack::Lineprof, profile: 'app.rb'
    # auto reload
    require 'sinatra/reloader'
    register Sinatra::Reloader
  end

  helpers do
  end

  get '/' do
    haml :index
  end

  not_found do
    halt 404
  end

end
