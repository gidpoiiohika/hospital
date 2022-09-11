class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.bigint :doctor_id, null: false, foreign_key: true
      t.bigint :patient_id, null: false, foreign_key: true
      t.integer :status

      t.timestamps
    end
  end
end
