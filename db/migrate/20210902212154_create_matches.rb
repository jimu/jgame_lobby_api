class CreateMatches < ActiveRecord::Migration[6.1]
  def change
    create_table :matches do |t|
      t.string :title
      t.datetime :deadline
      t.float :turnaround_days

      t.timestamps
    end
  end
end
