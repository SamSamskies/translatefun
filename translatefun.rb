require 'sinatra'
require 'dakine'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET'
end

get '/pidginenglish' do
  Dakine.translate params[:q]
end