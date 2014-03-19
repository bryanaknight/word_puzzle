class AddMadLibIdToSolutions < ActiveRecord::Migration
  def change
    add_column :solutions, :mad_lib_id, :integer, references: :mad_libs
  end
end
