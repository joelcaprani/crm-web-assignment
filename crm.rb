require 'sinatra'
require_relative 'contact'


Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
Contact.create('Steve', 'Jobs', 'steve@microsoft.com', 'Visionary')
Contact.create('Bill', 'Gates', 'bill@apple.com', 'crazy man')
Contact.create('Marshall', 'Mathers', 'm&m@apple.com', 'rapper')



get '/' do
  @crm_app_name = "CRM"
  erb :index
end


get '/contacts' do
  @contact_name = 'contacts'
  erb :contacts
end

get '/contacts/new' do
  erb :new_contact
end

post '/contacts' do
Contact.create(params[:first_name], params[:last_name], params[:email], params[:note])
redirect to ('/')
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  erb :show_contact
end
