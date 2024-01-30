class CreateContacts < ActiveRecord::Migration[7.1]
  def change
    create_table :contacts do |zebra|
      zebra.string "firs_name"
      zebra.string "last_name"
      zebra.string "email"
      zebra.string "company_id"

      zebra.timestamps
    end
  end
end
