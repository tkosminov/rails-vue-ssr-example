class CreateArticle < ActiveRecord::Migration[6.0]
  def change
    create_table :articles, id: :uuid do |t|
      t.string(:title, null: false)
      t.string(:content, null: false)

      t.timestamps(null: false)
    end
  end
end
