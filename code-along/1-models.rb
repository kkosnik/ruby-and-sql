# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/1-models.rb

# **************************
# Don't change or move
Company.destroy_all # this line of code removes everything out of company table before running the script
# **************************

# 1a. check out the schema file
# 1b. check out the model file
puts "There are now #{Company.all.count} companies."

# 2. create new companies
values = { name: "Apple, Inc.", 
            url: "https://apple.com", 
            city: "Cupertino", 
            state: "CA"}

apple = Company.new(values)
apple.save #.save is writing the insert statement

values = { name: "Amazon", 
            url: "https://amazon.com", 
            city: "Seattle", 
            state: "WA"}

apple = Company.new(values)
apple.save #.save is writing the insert statement

puts "There are now #{Company.all.count} companies."

# 3. query companies table
#puts Company.all #<Company:0x00007f3e44b63198> underlying memory addresses for objects
#puts Company.all.inspect #shows actual data inside

puts Company.where({state: "CA"}).inspect #returns an array if there are multiple companies with this 
#hashes are multiple key/value pairs for one thing. arrays are multiple values for one type of thing

california_company = Company.where({state: "CA"})[0]
puts california_company.inspect

# 4. read column values from row
puts california_company.read_attribute(:url)
puts california_company.url

# 5. update attribute value
california_company.write_attribute(:slogan,"Think different.")
california_company.slogan = "Think different."
california_company.save

puts california_company.inspect

new_company = Company.new
new_company.name = "Tesla, Inc."
new_company.url = "https://tesla.com"
new_company.city = "Palo Alto"
new_company.state = "CA"