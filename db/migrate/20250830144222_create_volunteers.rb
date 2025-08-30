class CreateVolunteers < ActiveRecord::Migration[7.1]
  def change
    create_table :volunteers do |t|
      t.string :name
      t.string :phone_number

      t.timestamps
    end
  end
end
