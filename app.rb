# frozen_string_literal: true

require 'sinatra'
require 'sinatra/json'
require 'socket'

SERVICE_NAME = 'B'

get '/' do
  json message: "I'm service #{SERVICE_NAME}"
end

get '/ping' do
  host = Socket.gethostname
  ip = IPSocket.getaddress(host)
  json message: "pong from #{SERVICE_NAME} [#{ip} (#{host})]"
end
