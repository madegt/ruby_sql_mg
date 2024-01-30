class CreateActivities < ActiveRecord::Migration[7.1]
  def change
    create_table :activities do |t|
      t.string "notes"
      t.string "ocurred_at"
      t.string "contact_id"
      t.integer "salesperson_id"   
      t.timestamps
    end
  end
end
