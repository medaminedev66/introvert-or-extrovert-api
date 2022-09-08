class CreateAnswers < ActiveRecord::Migration[7.0]
  def change
    create_table :answers do |t|
      t.text :text
      t.boolean :correct, default: false

      t.timestamps
    end
  end
end
