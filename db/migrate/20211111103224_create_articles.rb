class CreateArticles < ActiveRecord::Migration[6.1]
  def change
    create_table :articles do |t|
      t.string :title
      t.text :content
      t.belongs_to :rally, index: true

      t.timestamps
    end
  end
end
