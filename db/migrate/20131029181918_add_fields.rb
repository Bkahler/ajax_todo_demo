class AddFields < ActiveRecord::Migration
  def change
  	add_column :todos, :todo, :string
    add_column :todos, :completed, :boolean
  end
end
