class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :nom
      t.string :prenom
      t.string :email, unique: true
      t.boolean :isAdmin, default: false

      t.timestamps
    end
  end
end
