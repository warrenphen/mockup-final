FactoryGirl.define do
  factory :course do
    # name 'Test Course'
    # description 'learning things!'
  end

  factory :invalid_course, parent: :course do
    price -10
  end

end
