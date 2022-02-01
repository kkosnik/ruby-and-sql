class CreateActivities < ActiveRecord::Migration[7.0]
  def change
    create_table :activities do |t|
      t.string :activity_type
      t.string :activity_date
      t.string :notes
      t.string :contact_id
      t.string :salesperson_id
      t.timestamps
    end
  end
end
