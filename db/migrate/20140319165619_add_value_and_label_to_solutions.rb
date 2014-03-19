class AddValueAndLabelToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :value, :string
    add_column :solutions, :label, :string
  end
end
