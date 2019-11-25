class AddSettingsToPosts < ActiveRecord::Migration[5.1]
  def change
    enable_extension 'hstore'
    add_column :users, :settings, :jsonb, null: false, default: {}
    add_index  :users, :settings, using: :gin

    add_column :users, :conditions, :hstore
    add_index  :users, :conditions, using: :gin
  end
end
