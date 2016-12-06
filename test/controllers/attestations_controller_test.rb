require 'test_helper'

class AttestationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @attestation = attestations(:one)
  end

  test "should get index" do
    get attestations_url
    assert_response :success
  end

  test "should get new" do
    get new_attestation_url
    assert_response :success
  end

  test "should create attestation" do
    assert_difference('Attestation.count') do
      post attestations_url, params: { attestation: { date_da: @attestation.date_da, date_fa: @attestation.date_fa, titre_attes: @attestation.titre_attes, universite: @attestation.universite } }
    end

    assert_redirected_to attestation_url(Attestation.last)
  end

  test "should show attestation" do
    get attestation_url(@attestation)
    assert_response :success
  end

  test "should get edit" do
    get edit_attestation_url(@attestation)
    assert_response :success
  end

  test "should update attestation" do
    patch attestation_url(@attestation), params: { attestation: { date_da: @attestation.date_da, date_fa: @attestation.date_fa, titre_attes: @attestation.titre_attes, universite: @attestation.universite } }
    assert_redirected_to attestation_url(@attestation)
  end

  test "should destroy attestation" do
    assert_difference('Attestation.count', -1) do
      delete attestation_url(@attestation)
    end

    assert_redirected_to attestations_url
  end
end
