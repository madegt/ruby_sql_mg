# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/3-associations.rb

# **************************
# DON'T CHANGE OR MOVE
Contact.destroy_all
# **************************

# - Insert and read contact data for companies in the database
apple = Company.find_by({"name"=>"Apple"})

# 1. insert new rows in the contacts table with relationship to a company
new_contact=Contact.new
new_contact["first_name"]="Tim"
new_contact["last_name"]="Cook"
new_contact["email"]="tcook@gmail.com"
#assign that contact to Apple = using the foreign key of company id but I dont know it, but I want to row the primary key of a hash
new_contact["company_id"]=apple["id"]
new_contact.save

# 2. How many contacts work at Apple?
apple_contacts=Contact.where({"company_id"=>apple["id"]})
puts "Apple contacts: #{apple_contacts.count}"

# 3. What is the full name of each contact who works at Apple?
for contact in apple_contacts
    puts "#{contact["first_name"]}" "#{contact["las_name"]}"
end
