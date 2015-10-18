require File.dirname( __FILE__ ) + '/app/app.rb'
run Rack::Cascade.new [API, App]
