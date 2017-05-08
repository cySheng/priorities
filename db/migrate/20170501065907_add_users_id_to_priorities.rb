class AddUsersIdToPriorities < ActiveRecord::Migration[5.0]
  def change
  	add_reference :priorities, :user, index: true, foreign_key: true
  end
end
