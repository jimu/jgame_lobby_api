class CreateAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :addresses do |t|
      t.string :description
      t.string :value

      t.timestamps
    end
  end
end
