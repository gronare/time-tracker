class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.datetime :start
      t.integer :duration
      t.references :therapist, null: false, foreign_key: true

      t.timestamps
    end
  end
end
