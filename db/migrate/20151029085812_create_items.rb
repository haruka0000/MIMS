class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :i_name , :null => false
      t.string :category 
      t.text :e_key , :null => false
      t.binary :pic_data, limit:10.megabyte
      t.integer :pos_x , :precision => 9, :scale => 6
      t.integer :pos_y , :precision => 9, :scale => 6
      t.string :f_name , :null => false
      t.text :f_id , :null => false
      t.datetime :f_date
  
      t.timestamps null: false
    end
  end
end
