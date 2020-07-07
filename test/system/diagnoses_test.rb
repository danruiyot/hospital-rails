require "application_system_test_case"

class DiagnosesTest < ApplicationSystemTestCase
  setup do
    @diagnosis = diagnoses(:one)
  end

  test "visiting the index" do
    visit diagnoses_url
    assert_selector "h1", text: "Diagnoses"
  end

  test "creating a Diagnosis" do
    visit diagnoses_url
    click_on "New Diagnosis"

    fill_in "Add by", with: @diagnosis.add_by
    fill_in "Is admited", with: @diagnosis.is_admited
    fill_in "Notes", with: @diagnosis.notes
    fill_in "Patient", with: @diagnosis.patient_id
    fill_in "Prescriptions", with: @diagnosis.prescriptions
    fill_in "Title", with: @diagnosis.title
    fill_in "Updated by", with: @diagnosis.updated_by
    click_on "Create Diagnosis"

    assert_text "Diagnosis was successfully created"
    click_on "Back"
  end

  test "updating a Diagnosis" do
    visit diagnoses_url
    click_on "Edit", match: :first

    fill_in "Add by", with: @diagnosis.add_by
    fill_in "Is admited", with: @diagnosis.is_admited
    fill_in "Notes", with: @diagnosis.notes
    fill_in "Patient", with: @diagnosis.patient_id
    fill_in "Prescriptions", with: @diagnosis.prescriptions
    fill_in "Title", with: @diagnosis.title
    fill_in "Updated by", with: @diagnosis.updated_by
    click_on "Update Diagnosis"

    assert_text "Diagnosis was successfully updated"
    click_on "Back"
  end

  test "destroying a Diagnosis" do
    visit diagnoses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Diagnosis was successfully destroyed"
  end
end
