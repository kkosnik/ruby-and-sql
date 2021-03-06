# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner labs/1-models.rb

# **************************
# Don't change or move
Contact.destroy_all
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Contact.all.count} contacts."

# Apple id 31
# amazon id 32
# tesla id 33

apple = Company.where({name: "Apple, Inc."})[0]
apple_id = apple.id

amazon = Company.where({name: "Amazon"})[0]
amazon_id = amazon.id

tesla = Company.where({name: "Tesla, Inc."})[0]
tesla_id = tesla.id

# 2. create 1-2 new contacts for each company (they can be made up)
new_contact = Contact.new
new_contact.first_name = "Craig"
new_contact.last_name = "Federighi"
new_contact.email = "Craig.Federighi@apple.com"
new_contact.phone_number = "123-456-7890"
new_contact.company_id = apple_id
new_contact.save

new_contact = Contact.new
new_contact.first_name = "Tim"
new_contact.last_name = "Cook"
new_contact.email = "Tim.Cook@apple.com"
new_contact.phone_number = "123-456-7890"
new_contact.company_id = apple_id
new_contact.save

new_contact = Contact.new
new_contact.first_name = "Andy"
new_contact.last_name = "Jassy"
new_contact.email = "Andy.Jassy@amazon.com"
new_contact.phone_number = "123-456-7890"
new_contact.company_id = amazon_id
new_contact.save


# 3. write code to display how many contacts are in the database AND each contact's info (name, email), e.g.:
puts "There are now #{Contact.all.count} contacts."
all_contacts = Contact.all

for contact in all_contacts
    puts "#{contact.first_name} #{contact.last_name} - #{contact.email}"
end

# ---------------------------------
# Contacts: 4
# Andy Jassy - andy@amazon.com
# Craig Federighi - craig@apple.com
# Elon Musk - elon@tesla.com
# Tim Cook - tim@apple.com
