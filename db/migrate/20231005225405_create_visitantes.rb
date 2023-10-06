class CreateVisitantes < ActiveRecord::Migration[7.0]
  def change
    create_table :visitantes do |t|
      t.string :cpf
      t.string :nome
      t.string :rg
      t.string :celular
      t.string :foto, default: "https://upload.wikimedia.org/wikipedia/commons/9/99/Sample_User_Icon.png" 
      t.string :hora_visita
      t.integer :setor
      t.integer :funcionario_id

      t.timestamps
    end
  end
end
