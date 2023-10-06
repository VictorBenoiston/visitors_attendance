require "test_helper"

class VisitantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @visitante = visitantes(:one)
  end

  test "should get index" do
    get visitantes_url
    assert_response :success
  end

  test "should get new" do
    get new_visitante_url
    assert_response :success
  end

  test "should create visitante" do
    assert_difference("Visitante.count") do
      post visitantes_url, params: { visitante: { celular: @visitante.celular, cpf: @visitante.cpf, foto: @visitante.foto, funcionario_id: @visitante.funcionario_id, hora_visita: @visitante.hora_visita, nome: @visitante.nome, rg: @visitante.rg, setor: @visitante.setor } }
    end

    assert_redirected_to visitante_url(Visitante.last)
  end

  test "should show visitante" do
    get visitante_url(@visitante)
    assert_response :success
  end

  test "should get edit" do
    get edit_visitante_url(@visitante)
    assert_response :success
  end

  test "should update visitante" do
    patch visitante_url(@visitante), params: { visitante: { celular: @visitante.celular, cpf: @visitante.cpf, foto: @visitante.foto, funcionario_id: @visitante.funcionario_id, hora_visita: @visitante.hora_visita, nome: @visitante.nome, rg: @visitante.rg, setor: @visitante.setor } }
    assert_redirected_to visitante_url(@visitante)
  end

  test "should destroy visitante" do
    assert_difference("Visitante.count", -1) do
      delete visitante_url(@visitante)
    end

    assert_redirected_to visitantes_url
  end
end
