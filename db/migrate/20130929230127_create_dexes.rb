class CreateDexes < ActiveRecord::Migration
  def change
    create_table :dexes do |t|
      t.string :description

      t.timestamps
    end
  end
end
