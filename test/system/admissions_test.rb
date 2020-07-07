require "application_system_test_case"

class AdmissionsTest < ApplicationSystemTestCase
  setup do
    @admission = admissions(:one)
  end

  test "visiting the index" do
    visit admissions_url
    assert_selector "h1", text: "Admissions"
  end

  test "creating a Admission" do
    visit admissions_url
    click_on "New Admission"

    fill_in "Date released", with: @admission.date_released
    fill_in "Doctor", with: @admission.doctor_id
    fill_in "Patient", with: @admission.patient_id
    fill_in "Ward", with: @admission.ward_id
    click_on "Create Admission"

    assert_text "Admission was successfully created"
    click_on "Back"
  end

  test "updating a Admission" do
    visit admissions_url
    click_on "Edit", match: :first

    fill_in "Date released", with: @admission.date_released
    fill_in "Doctor", with: @admission.doctor_id
    fill_in "Patient", with: @admission.patient_id
    fill_in "Ward", with: @admission.ward_id
    click_on "Update Admission"

    assert_text "Admission was successfully updated"
    click_on "Back"
  end

  test "destroying a Admission" do
    visit admissions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Admission was successfully destroyed"
  end
end
