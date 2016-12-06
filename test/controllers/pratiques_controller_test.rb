require 'test_helper'

class PratiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pratique = pratiques(:one)
  end

  test "should get index" do
    get pratiques_url
    assert_response :success
  end

  test "should get new" do
    get new_pratique_url
    assert_response :success
  end

  test "should create pratique" do
    assert_difference('Pratique.count') do
      post pratiques_url, params: { pratique: { date_da: @pratique.date_da, date_fa: @pratique.date_fa, titre_attes: @pratique.titre_attes, universite: @pratique.universite } }
    end

    assert_redirected_to pratique_url(Pratique.last)
  end

  test "should show pratique" do
    get pratique_url(@pratique)
    assert_response :success
  end

  test "should get edit" do
    get edit_pratique_url(@pratique)
    assert_response :success
  end

  test "should update pratique" do
    patch pratique_url(@pratique), params: { pratique: { date_da: @pratique.date_da, date_fa: @pratique.date_fa, titre_attes: @pratique.titre_attes, universite: @pratique.universite } }
    assert_redirected_to pratique_url(@pratique)
  end

  test "should destroy pratique" do
    assert_difference('Pratique.count', -1) do
      delete pratique_url(@pratique)
    end

    assert_redirected_to pratiques_url
  end
end
