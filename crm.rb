require 'sinatra'
require_relative 'contact'

Contact.create('Joel', 'Caprani', 'joel@joel.com', 'Nice guy')
Contact.create('Mark', 'Zuckerberg', 'mark@facebook.com', 'CEO')
Contact.create('Sergey', 'Brin', 'sergey@google.com', 'Co-Founder')
Contact.create('Steve', 'Jobs', 'steve@microsoft.com', 'Visionary')
Contact.create('Bill', 'Gates', 'bill@apple.com', 'crazy man')
Contact.create('Marshall', 'Mathers', 'm&m@apple.com', 'rapper')
Contact.create('Slim', 'Shady', 'm&m@rap.com', 'poet')
Contact.create('Dr', 'Dre', 'dre@aftermath.com', 'Producer')
Contact.create('Paul', 'Newman', 'paul@cool.com', 'actor')
Contact.create('Mick', 'Jagger', 'mick@rolling.com', 'singer')







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
redirect to ('/contacts')
end

get '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :show_contact
  else
    raise Sinatra::NotFound
  end
end

get '/contacts/:id/edit' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    erb :edit_contact
  else
    raise Sinatra::NotFound
  end
end

put '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.email = params[:email]
    @contact.note = params[:note]

    redirect to('/contacts')
  else
    raise Sinatra::NotFound
  end
end

delete '/contacts/:id' do
  @contact = Contact.find(params[:id].to_i)
  if @contact
    @contact.delete
    redirect to('/contacts')
  else
    raise Sinatra::NotFound
  end
end
