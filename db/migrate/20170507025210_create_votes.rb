class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
    	t.references :user, index: true, foreign_key: true
    	t.references :priority, index: true, foreign_key: true
    	t.integer :direction, default: 0
      t.timestamps
    end
  end
end
