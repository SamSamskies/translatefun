require 'sinatra'
require 'dakine'
require 'json'

before do
  response.header['Access-Control-Allow-Origin'] = '*'
  response.headers['Access-Control-Allow-Methods'] = 'GET'
end

get '/' do
  'Instructions coming soon. :)'
end

get '/pidginenglish' do
  if params[:q]
    { text: Dakine.translate(params[:q]) }.to_json
  else
    { error: 'Breh, u know how fo read da instructions o wat?' }.to_json
  end
end