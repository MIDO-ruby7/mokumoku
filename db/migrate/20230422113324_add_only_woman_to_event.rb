class AddOnlyWomanToEvent < ActiveRecord::Migration[6.1]
  def change
    add_column :events, :only_woman, :integer
  end
end
