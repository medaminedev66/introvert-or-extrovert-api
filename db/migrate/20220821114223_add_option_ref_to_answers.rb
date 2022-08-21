class AddOptionRefToAnswers < ActiveRecord::Migration[7.0]
  def change
    add_reference :answers, :option, null: false, foreign_key: true
  end
end
