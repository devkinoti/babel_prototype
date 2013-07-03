class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone_number
      t.string :organization
      t.string :existing_url
      t.text :project_description
      t.text :inspiration
      t.text :deadline

      t.timestamps
    end
  end
end
