class CreateTwips < ActiveRecord::Migration[7.0]
  def change
    create_table :twips do |t|
      t.text :twip

      t.timestamps
    end
  end
end
