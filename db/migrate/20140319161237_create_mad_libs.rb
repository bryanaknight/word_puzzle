class CreateMadLibs < ActiveRecord::Migration
  def change
    create_table :mad_libs do |t|

      t.timestamps
    end
  end
end
