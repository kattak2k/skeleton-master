# README

Skeleton Application - For discussion during the interview process

Important bits of required software:

* Ruby 2.3.1

* Rails 5.0.1

* Sqlite3 db


## Application Structure

This application attempts to model some of the information that gets created during the process of 
interviewing candidates for a position.

As such, it has a model for the Position to be filled, for the Interview(s) for that position,
for the Candidates for those Positions, who will be interviewed.  It has a model for the Questions
that will be asked at each interview, with an understanding that some questions will be asked to
candidates for different positions.  It has a mechanism by which the Interviewers can Rate the answers
a candidate provides for the questions they are asked.

## Tasks:

* Interview questions need to be ordered correctly - the test is intermittntly failing now.
   1. solution : sorting by display_order
    
    ```
    url// http://localhost:3000/interview_questions
     
    [{"id":1,"display_order":1,"question_id":1},{"id":3,"display_order":2,"question_id":4},{"id":2,"display_order":3,"question_id":2}]
    ```
    
* Need a way to get an average rating of a candidate's answer to questions - exclude the zero rankings - those should not count
   2. solution : below is the url outputs the answer "great" of the candidate "Fred Flinstone"                   along the avg rating '4.0' i.e. average of 5.0 , 3.0 & 0.0
    ``` 
     url// http://localhost:3000/candidates/1/answers/1 

    {"id":1,"response":"great","candidate":{"id":1,"name":"Fred Flintstone","email":"fflint@bedrock.com","phone":"123456789"},"answer_ratings":"4.0"}
    
    ```
* Lets build out a way to get an upcoming interview schedule for an interviewer - it should include:
  * the next two interviews
  * candidate information 
  * a list of questions

## Exploratory Task - if you've got the time to look into it, that'd be great:

* Could we remove the candidate_id column from an interview and use interview_participants to track both interviewers 
  and candidates in the same table somehow?

