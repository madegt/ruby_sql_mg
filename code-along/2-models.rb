# This is a Rails app and we want to load all the files in the app 
# when running this code.  To do so, your current working directory
# should be the top-level directory (i.e. /workspace/your-app/) and then run:
# rails runner code-along/2-models.rb

# **************************
# DON'T CHANGE OR MOVE
Company.destroy_all
# **************************

# - Insert, read, update, and delete rows in companies table
#   (i.e. full CRUD of company data).

puts "There are #{Company.all.count} companies"

# 1a. check out the schema file
# 1b. check out the model file

# 2. insert new rows in companies table
#empty row, then build up data 
new_company =  Company.new

#this is a hash
puts new_company.inspect

#insert columns
new_company["name"]="Apple"
new_company["city"]="Cupertino"
new_company["state"]="CA"
new_company["url"]="httsp:link"

#to insert on the table
new_company.save 

puts new_company.inspect

puts "There are #{Company.all.count} companies"

#open new hash, and create another line
new_company=Company.new
new_company["name"]="Amazon"
new_company["city"]="Seattle"
new_company["state"]="WA"
new_company["url"]="httsp:link"

puts "There are #{Company.all.count} companies"

new_company=Company.new
new_company["name"]="Twitter"
new_company["city"]="San Francisco"
new_company["state"]="CA"
new_company["url"]="httsp:link"

puts "There are #{Company.all.count} companies"

# 3. query companies table to find all row with California company

all_companies=Company.all
puts all_companies.inspect 

cali_companies=Company.where{"State"=>"CA"}
puts cali_companies.inspect

puts "Companies in Cali #{cali_companies}"

# 4. query companies table to find single row for Apple

apple =Company.where({"name"=>"Apple"})[0]
puts apple.inspect

#also using find_by

apple_2 =Company.find_by({"name"=>"Apple"})
puts apple_@.inspect


# 5. read a row's column value

# 6. update a row's column value

# 7. delete a row
