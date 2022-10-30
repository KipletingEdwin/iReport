class CreateIncidents < ActiveRecord::Migration[7.0]
  def change
    create_table :incidents do |t|
      t.string :incident_type
      t.string :title
      t.string :description
      t.string :location
      t.string :date
      t.string :image_url
      t.integer :user_id,  null: false, foreign_key: true
      t.string :status

      t.timestamps
    end
  end
end
