require 'sinatra'

GREETS = [
  'ohai, stranger!',
  'lovely day for it, eh?',
  'good evening, guvnah',
  'my name is inigo montoya. you killed my father. prepare to die'
]

get '/greeting' do
  GREETS.sample
end

post '/greeting' do
  greeting = request.body.read
  GREETS << greeting
  204 # no content
end
