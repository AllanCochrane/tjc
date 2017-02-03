require 'test_helper'

class LessonStepsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @lesson_step = lesson_steps(:one)
  end

  test "should get index" do
    get lesson_steps_url
    assert_response :success
  end

  test "should get new" do
    get new_lesson_step_url
    assert_response :success
  end

  test "should create lesson_step" do
    assert_difference('LessonStep.count') do
      post lesson_steps_url, params: { lesson_step: { description: @lesson_step.description, file_path: @lesson_step.file_path, lesson_id: @lesson_step.lesson_id, media_type: @lesson_step.media_type, text: @lesson_step.text } }
    end

    assert_redirected_to lesson_step_url(LessonStep.last)
  end

  test "should show lesson_step" do
    get lesson_step_url(@lesson_step)
    assert_response :success
  end

  test "should get edit" do
    get edit_lesson_step_url(@lesson_step)
    assert_response :success
  end

  test "should update lesson_step" do
    patch lesson_step_url(@lesson_step), params: { lesson_step: { description: @lesson_step.description, file_path: @lesson_step.file_path, lesson_id: @lesson_step.lesson_id, media_type: @lesson_step.media_type, text: @lesson_step.text } }
    assert_redirected_to lesson_step_url(@lesson_step)
  end

  test "should destroy lesson_step" do
    assert_difference('LessonStep.count', -1) do
      delete lesson_step_url(@lesson_step)
    end

    assert_redirected_to lesson_steps_url
  end
end
