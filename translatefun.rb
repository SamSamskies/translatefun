require 'sinatra'
require 'dakine'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET'
end

get '/pidginenglish' do
  error = 'Breh, u know how fo read da instructions o wat?'
  params[:q] ? Dakine.translate(params[:q]) : error
end