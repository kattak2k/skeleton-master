Rails.application.routes.draw do

# output: gives the average and non-zero rating 
#url : http://localhost:3000/answer_ratings
#result : "4.0" i.e. average of 5.0, 3.0 and 0.0
  resources :answer_ratings , only: [:index]

# Output: outputs the sort order
  resources :interview_questions , only: [:index]

  resources :answers

  resources :candidates do
    resources :answers
  end

end
