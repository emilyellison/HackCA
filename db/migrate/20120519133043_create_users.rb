class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first
      t.string :last
      t.string :email
      t.string :password_digest
      t.boolean :dev, default: false
      t.boolean :design, default: false
      t.boolean :html_css, default: false

      t.timestamps
    end
  end
end
