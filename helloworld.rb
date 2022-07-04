#!/usr/bin/env ruby
require 'sinatra'
require 'sinatra/reloader' if development?

get '/' do
  output = "Hello world!"
  output << "<br />"
  output << "<a href=\"goodbye\">Leave</a>"
end

get '/goodbye' do
  "Goodbye world!"
end

get '/about' do
  output = "<h2>Sinatra</h2>"
  output << "<p>This is my first Sinatra app.</p>"
end

get '/form' do
  form = '<form action="/form" method="post">'
  form << '<input type="submit" value="Submit" />'
  form << '</form>'
end

post '/form' do
  "Thank you for submitting the form."
end

