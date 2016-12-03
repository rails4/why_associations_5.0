# ?
class CreateArticlesAuthors < ActiveRecord::Migration[5.0]
  def change
    create_table :articles_authors, id: false do |t|
      t.references :article
      t.references :author
    end
    # add_index :articles_authors, :article_id
    # add_index :articles_authors, :author_id
  end
end
