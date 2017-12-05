class CreateAppointments < ActiveRecord::Migration[5.1]
  def change
    create_table :appointments do |t|
      t.references :patient
      t.references :doctor
      t.string :disease

      t.timestamps
    end
  end
end
