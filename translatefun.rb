require 'sinatra'
require 'dakine'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET'
end

get '/pidginenglish' do
  error = { error: 'Breh, u know how fo read da instructions o wat?' }.to_json
  translated_text = { text: Dakine.translate(params[:q]) }.to_json
  params[:q] ? translated_text : error
end