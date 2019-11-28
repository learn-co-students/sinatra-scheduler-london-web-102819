class CreateTables < ActiveRecord::Migration[5.0]

  def change

    create_table :courses do |t|
      t.string :name
      t.string :professor
      t.integer :credits
      t.integer :user_id
    end

    create_table :users do |t|
      t.string :name
    end

  end

end
