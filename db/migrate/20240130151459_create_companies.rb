class CreateCompanies < ActiveRecord::Migration[7.1]
  def change
    create_table :companies do |t|
      # t.integer "id" = you don’t really need this, it is created automatically 
      t.string "name"
      t.string "city"
      t.string "state"
      t.string "url"
      
      t.timestamps
    end
  end
end
