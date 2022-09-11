class CreateRecommendations < ActiveRecord::Migration[7.0]
  def change
    create_table :recommendations do |t|
      t.bigint :doctor_id
      t.bigint :patient_id
      t.string :title

      t.timestamps
    end
  end
end
