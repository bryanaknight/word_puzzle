class AddTextToMadLibs < ActiveRecord::Migration
  def change
    add_column :mad_libs, :text, :string
  end
end
