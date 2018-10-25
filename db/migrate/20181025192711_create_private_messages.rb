class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.datetime :date
      t.references :sender, index:true
      t.references :receiver, index:true
      t.timestamps
    end
  end
end
