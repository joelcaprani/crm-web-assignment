gem 'activerecord', '=4.2.7'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm-web.sqlite3')

# require 'sinatra'
class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name,  as: :string
  field :email,      as: :string
  field :note,       as: :text

  def full_name
    "#{first_name} #{last_name}"
  end

Contact.auto_update! 


  # attr_accessor :first_name, :last_name, :email, :note
  # attr_reader :id

  # @@contacts = []
  # @@next_id = 1

  # This method should initialize the contact's attributes

  # def initialize(first_name, last_name, email, note)
    # @id = @@next_id
    # @first_name = first_name
    # @last_name = last_name
    # @email =email
    # @note = note


  #   # increment the next unique ID
  #   @@next_id += 1
  # end

  # This method should call the initializer,
  # store the newly created contact, and then return it

#   def self.create(first_name, last_name, email, note)
#     # 1. Initialize a new Contact with a unique ID
#     new_contact = self.new(first_name, last_name, email, note)
#
#
#     # 2. Add the new Contact to the list of all contacts
#     @@contacts << new_contact
#
#     # 3. increment the next unique ID
#     #  @@next_id += 1
#
#     # 4. Return the newly created Contact
#     return  new_contact
#   end
#
#   # This method should return all of the existing contacts
#   def self.all
#     @@contacts
#   end
#
#   # This method should accept an id as an argument
#   # and return the contact who has that id
#   def self.find(id)
#     @@contacts.find { |contact| contact.id == id }
#
#   end
#   # This method should allow you to specify
#   # 1. which of the contact's attributes you want to update
#   # 2. the new value for that attribute
#   # and then make the appropriate change to the contact
#   def update(attribute, new_value)
#     if "first_name" == attribute
#       self.first_name = new_value
#     elsif "last_name" == attribute
#       self.last_name = new_value
#     elsif "email" == attribute
#       self.email = new_value
#     elsif "note" == attribute
#       self.note = new_value
#     end
#
#   end
#   # This method should work similarly to the find method above
#   # but it should allow you to search for a contact using attributes other than id
#   # by specifying both the name of the attribute and the value
#   # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
#   def self.find_by(attribute, value)
#     temp_contact = nil
#     @@contacts.each do |contact|
#       temp_contact = contact if attribute == "first_name" && contact.first_name == value
#       temp_contact = contact if attribute == "last_name" && contact.last_name == value
#       temp_contact = contact if attribute == "email" && contact.email == value
#       temp_contact = contact if attribute == "note" && contact.note == value
#     end
#      return temp_contact
#   end
#
#   # This method should delete all of the contacts
#   def self.delete_all
#     @@contacts = []
#
#   end
#

#   # This method should delete the contact
#   # HINT: Check the Array class docs for built-in methods that might be useful here
#   def delete
#    @@contacts.delete_if { |contact| contact.id == self.id }
#   end
#
#   # Feel free to add other methods here, if you need them.
#   def self.search(search_first_name, search_last_name, search_email)
#
#     search_results = []
#    @@contacts.each do |contact|
#       if contact.first_name == search_first_name && contact.last_name == search_last_name && contact.email == search_email ||
#          contact.first_name == search_first_name && contact.last_name == search_last_name ||
#          contact.first_name == search_first_name && contact.email == search_email ||
#          contact.last_name == search_last_name && contact.email == search_email
#          search_results << contact
#         end
#       end
#     return search_results
#
#   end
#
 end
# Copy your entire Contact class from the old crm assignment here.
# Then, run the following at the command line:
#
#   ruby test/contact_test.rb
#
# If your implementation of the Contact class is 'right', then you should see that all tests pass!
