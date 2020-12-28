require 'test_helper'

class StudentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup
  @student = Student.new()
end

test "Student table should have roll_no" do
  assert @student.has_attribute?(:roll_no)
end

test "Student table should have name" do
  assert @student.has_attribute?(:name)
end

test "Student table should have branch" do
  assert @student.has_attribute?(:branch)
end

test "Student table should have cgpa" do
  assert @student.has_attribute?(:cgpa)
end

test "Student table should have address" do
  assert @student.has_attribute?(:address)
end

test "roll_no column is of wrong data type" do
  assert @student.column_for_attribute('roll_no').type==:integer
end

test "name column is of wrong data type" do
  assert @student.column_for_attribute('name').type==:string

end

test "branch column is of wrong data type" do
  assert @student.column_for_attribute('branch').type==:string
end

test "cgpa column is of wrong data type" do
  assert @student.column_for_attribute('cgpa').type==:float
end

test "address column is of wrong data type" do
  assert @student.column_for_attribute('address').type==:text
end

end
