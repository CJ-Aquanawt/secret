class CreateClassifieds < ActiveRecord::Migration
  def change
    create_table :classifieds do |t|
      t.text :content
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :classifieds, :users
  end
end
