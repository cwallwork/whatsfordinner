FactoryGirl.define do
  factory :recipe do
    name "Vinigarette"
    viewable true
    instructions "mix oil, vinegar and mustard"

    after(:build) do |recipe|
    end
      
    
  end
end