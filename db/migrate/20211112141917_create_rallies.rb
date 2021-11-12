class CreateRallies < ActiveRecord::Migration[6.1]
  def change
    create_table :rallies do |t|
      t.string :title
      t.text :presentation

      t.timestamps
    end
  end
end
