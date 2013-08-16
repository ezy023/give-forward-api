class CreateFundraisers < ActiveRecord::Migration
  def change
    create_table :fundraisers do |t|
      t.string  :name
      t.text    :description

      t.timestamps
    end
  end
end
