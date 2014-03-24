class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :name
      t.string :body
      t.references :article
      t.integer :article_id

       
    end
    
  end
end
