require 'rubygems'
require 'sinatra'
require 'sequel'
require 'net/http'
require 'rexml/document'
include REXML

configure :production do

end

get '/' do
  haml :index
end

not_found do
  haml :four_o_four
end
