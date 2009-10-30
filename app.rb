require 'rubygems'
require 'sinatra'
require 'sequel'
require 'net/http'
require 'rexml/document'
include REXML
configure :production do
  
  DB = Sequel.connect('sqlite://app.sqlite3')

  DB.create_table :projects do
    primary_key :id
    String :name
    Text :content
  end

  DB.create_table :folios do
    primary_key :id
    String :name
    Text :content
  end
end

get '/' do
  begin
   #resp = Net::HTTP.get(URI.parse('http://twitter.com/statuses/user_timeline.xml?id=theahi&count=10'))
   #doc = Document.new resp
   #@tweets = []
   #doc.elements.each '/statuses/status' do |text|
   #  @tweets << {:id => text.elements['id'], :text => text.elements['text'].to_s.gsub(/@([\w\d]+)/, '<a href="http://twitter.com/\1">@\1</a> '), :date => text.elements['created_at']}
   #end
  rescue
    #@tweets = []
  end
  @tweets = []
  haml :index
end

get '/folio' do
  haml :folio
end

get '/projects' do
  haml :projects
end

get '/about' do
  haml :about
end

get '/project/:id' do
  
end

get '/site/:id' do
  
end

not_found do
  haml :four_o_four
end
