class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.text :problem
      t.text :reply

      t.timestamps
    end
  end
end
