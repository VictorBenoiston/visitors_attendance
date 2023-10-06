require "application_system_test_case"

class VisitantesTest < ApplicationSystemTestCase
  setup do
    @visitante = visitantes(:one)
  end

  test "visiting the index" do
    visit visitantes_url
    assert_selector "h1", text: "Visitantes"
  end

  test "should create visitante" do
    visit visitantes_url
    click_on "New visitante"

    fill_in "Celular", with: @visitante.celular
    fill_in "Cpf", with: @visitante.cpf
    fill_in "Foto", with: @visitante.foto
    fill_in "Funcionario", with: @visitante.funcionario_id
    fill_in "Hora visita", with: @visitante.hora_visita
    fill_in "Nome", with: @visitante.nome
    fill_in "Rg", with: @visitante.rg
    fill_in "Setor", with: @visitante.setor
    click_on "Create Visitante"

    assert_text "Visitante was successfully created"
    click_on "Back"
  end

  test "should update Visitante" do
    visit visitante_url(@visitante)
    click_on "Edit this visitante", match: :first

    fill_in "Celular", with: @visitante.celular
    fill_in "Cpf", with: @visitante.cpf
    fill_in "Foto", with: @visitante.foto
    fill_in "Funcionario", with: @visitante.funcionario_id
    fill_in "Hora visita", with: @visitante.hora_visita
    fill_in "Nome", with: @visitante.nome
    fill_in "Rg", with: @visitante.rg
    fill_in "Setor", with: @visitante.setor
    click_on "Update Visitante"

    assert_text "Visitante was successfully updated"
    click_on "Back"
  end

  test "should destroy Visitante" do
    visit visitante_url(@visitante)
    click_on "Destroy this visitante", match: :first

    assert_text "Visitante was successfully destroyed"
  end
end
