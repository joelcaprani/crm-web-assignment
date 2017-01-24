require_relative 'contact'
require 'sinatra'

@crm_app_name = "Joel's CRM"
get '/' do
  erb :index
end

get '/contacts' do
  erb :contacts
end

# Implement the new web-based CRM here.
# Do NOT copy the CRM class from the old crm assignment, as it won't work at all for the web-based version!
# You'll have to implement it from scratch.
