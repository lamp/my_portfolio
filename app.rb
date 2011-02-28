require 'rubygems'
require "bundler"
Bundler.require :default

require 'sinatra'

configure :production do

end

get '/' do
  haml :index
end

not_found do
  haml :four_o_four
end
