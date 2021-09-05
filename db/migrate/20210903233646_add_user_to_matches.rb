class AddUserToMatches < ActiveRecord::Migration[6.1]
  def change
    #add_reference :matches, :user, null: false, foreign_key: true
    add_reference :matches, :user
  end
end
