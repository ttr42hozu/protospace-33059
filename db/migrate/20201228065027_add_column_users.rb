# カラムを記述し忘れてrails db:migrateしてしまったので、新たにマイグレーションファイルを作って追加した
class AddColumnUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :profile, :text
    add_column :users, :occupation, :text
    add_column :users, :position, :text
  end
end
