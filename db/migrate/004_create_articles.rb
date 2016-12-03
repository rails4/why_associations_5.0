class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title
      t.string :isbn
      t.string :pub_date

      t.timestamps
    end
  end
end
