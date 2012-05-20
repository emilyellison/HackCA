class CreateWebapps < ActiveRecord::Migration
  def change
    create_table :webapps do |t|
      t.string :title
      t.text :description
      t.string :website
      t.string :github

      t.timestamps
    end
  end
end
