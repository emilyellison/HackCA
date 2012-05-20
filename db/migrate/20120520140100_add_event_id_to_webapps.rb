class AddEventIdToWebapps < ActiveRecord::Migration
  def change
    add_column :webapps, :event_id, :integer
  end
end
