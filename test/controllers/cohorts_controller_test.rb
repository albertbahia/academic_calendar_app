require 'test_helper'

class CohortsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cohort = cohorts(:one)
  end

  test "should get index" do
    get cohorts_url
    assert_response :success
  end

  test "should get new" do
    get new_cohort_url
    assert_response :success
  end

  test "should create cohort" do
    assert_difference('Cohort.count') do
      post cohorts_url, params: { cohort: { class_code: @cohort.class_code, date: @cohort.date, event_type: @cohort.event_type, notes: @cohort.notes, owner: @cohort.owner, time_to_generate: @cohort.time_to_generate } }
    end

    assert_redirected_to cohort_url(Cohort.last)
  end

  test "should show cohort" do
    get cohort_url(@cohort)
    assert_response :success
  end

  test "should get edit" do
    get edit_cohort_url(@cohort)
    assert_response :success
  end

  test "should update cohort" do
    patch cohort_url(@cohort), params: { cohort: { class_code: @cohort.class_code, date: @cohort.date, event_type: @cohort.event_type, notes: @cohort.notes, owner: @cohort.owner, time_to_generate: @cohort.time_to_generate } }
    assert_redirected_to cohort_url(@cohort)
  end

  test "should destroy cohort" do
    assert_difference('Cohort.count', -1) do
      delete cohort_url(@cohort)
    end

    assert_redirected_to cohorts_url
  end
end
