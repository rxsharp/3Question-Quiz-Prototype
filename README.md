#App Notes/Directions
Add Question mvc via scaffold
rails g scaffold Question q1 q1a q1b q1c q1d q1correct q2 q2a q2b q2c q2d q2correct q3 q3a q3b q3c q3d q3correct

Add seeds
lakers2000 = Question.create(
q1: "How many Championships did Phil Jackson win with the Lakers in the 2000 decade?", 
q1a: "5", q1b: "4", q1c: "3", q1d: "2", q1correct: "a",
#Answer: A

q2: "Who had the highest salary for the Lakers in the 2004-2005 NBA season?", 
q2a: "Kobe Bryant", q2b: "Shaquille O’Neal", q2c: "Lamar Odom", q2d: "Brian Grant", q2correct: "a",
#Answer: A

q3: "Which of these Lakers has less than 3 NBA Championships from the 2000′s?", 
q3a: "Kobe Bryant", q3b: "Shannon Brown", q3c: "Derek Fisher", q3d: "Rick Fox", q3correct: "b",
#Answer: B
)


rails g scaffold Grill ans1 ans2 ans3 question:references

Add route to combine the two
  resources :questions do
  resources :grills
  end
Link to questions show page 
<%= link_to "Try it out", new_question_grill_path(@question), class: "btn btn-default btn-lg" %></br></br>

On question.rb
has_many :grills, dependent: :destroy
