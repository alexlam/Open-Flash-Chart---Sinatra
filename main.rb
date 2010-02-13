
require 'rubygems'
require 'active_support'
require 'open_flash_chart'
require 'json'
require 'ofco'
require 'graphcode'

require 'haml'
require 'sinatra'
require 'sinatra/static_assets'
include OpenFlashChart



set :public, 'public'


get '/' do

  haml :index
end

get '/test_it/' do
  
  @graph = open_flash_chart_object(600,300,"/test_it/graph_code")

  erb :chart, :layout => false
end

   

get '/test_it/graph_code' do
  
    single_bars

    haml :view, :layout => false
end

__END__

