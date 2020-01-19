class CreateDummies < ActiveRecord::Migration[6.0]
  def change
    create_table :dummies do |t|
      t.string :name
      t.string :mobile

      t.timestamps
    end
  end
end
