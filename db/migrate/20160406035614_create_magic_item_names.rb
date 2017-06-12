class CreateMagicItemNames < ActiveRecord::Migration
  def change
    create_table :magic_item_names do |t|
      t.string :name
      t.boolean :affix

      t.timestamps null: false
    end
  end
end
