# Introvert Or Extrovert API
![Rails](https://img.shields.io/badge/rails-%23CC0000.svg?style=for-the-badge&logo=ruby-on-rails&logoColor=white) ![](https://img.shields.io/badge/Ruby-CC342D?style=for-the-badge&logo=ruby&logoColor=white) ![Postgres](https://img.shields.io/badge/postgres-%23316192.svg?style=for-the-badge&logo=postgresql&logoColor=white) ![](https://img.shields.io/badge/RuboCop-000000.svg?style=for-the-badge&logo=RuboCop&logoColor=white)


> This API is a simple web API where you make CRUD calls to a server to organize questions and their answers.

<!-- ![screenshot](./app_screenshot.png)
 -->
## Front-end Interface
You can use this API in conjunction with my front-end introvert or extrovert app: [see the repo](https://github.com/medaminedev66/introvert-or-extrovert-client)

## Built With

- Ruby on Rails
- ActiveRecord
- PostgreSQL
- Jbuilder
- Rubocop


<!-- ## Live Demo

[Live Demo Link](https://livedemo.com) -->


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites
- Ruby version: 3.2.1
- Ruby on Rails version: 7.0.3.1
### Setup
```sh
bundle install
```
### Install
```sh
bundle install

# create migrations with activerecord
rails db:migrate

# if you would like to use seed data
rails db:seed
```
### Usage
```sh
# start server
rails s
```

RoR uses port 3000 by default

## Backend Relationships
<!-- ### Run tests -->

```rb
                                                   
Quiestion --------------< Answer
:text                    :question_id          
                         :text               
                         :correct                  
                                         
                                        


```
### Question
- has many answers

### Answer
- belongs to a question


## Example Calls You Can Make With API

### Questions

You can make all CRUD calls for the questions database and Create and Destroy questions

- CREATE questions
- GET/RETRIEVE all questions
- GET/RETRIEVE an individual question
- DELETE a question
- UPDATE a question
- CREATE a question
- DESTROY a question

routes

```rb
Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :questions, only: [:create, :index, :show, :destroy, :update]
    end
  end
end
```

#### Example: Retrieve A Question

Shows you a question and all of the answers associated with the question

```js
 fetch('/api/v1/questions/2').then((res) => res.json())
   .then((data) => console.log(data));


// output
{
    "id": 2,
    "question": "You’ve been sitting in the doctor’s waiting room for more than 25 minutes. You:",
    "answers": [
        {
            "id": 5,
            "text": "Look at your watch every two minutes",
            "corret": true
        },
        {
            "id": 6,
            "text": "Bubble with inner anger, but keep quiet",
            "corret": false
        },
        {
            "id": 7,
            "text": "Explain to other equally impatient people in the room that the doctor is always running late",
            "corret": false
        },
        {
            "id": 8,
            "text": "Complain in a loud voice, while tapping your foot impatiently",
            "corret": false
        }
    ]
}
```
### Answers
- CREATE an answer
- DELETE an answer
- UPDATE an answer

### Example: Create An Answer

```js
fetch('/api/v1/answers', {
    method: 'POST',
    headers: {
      'Content-Type': 'application/json',
    },
    body: JSON.stringify({
      answer: {
        text: "How are you",
        correct: true,
        question_id: 2,
      },
    }),
  }).then((res) => {
       if (res.ok) {
       
       } else {
    throw new Error(`API error! status: ${res.status}`);
  }
};

// output
{
id: 1,

}
```

## Authors

👤 **Amine Smahi**

- GitHub: [@medaminedev66](https://github.com/medaminedev66)
- Twitter: [@medaminesmahi](https://twitter.com/medaminesmahi)
- LinkedIn: [Amine Smahi](https://www.linkedin.com/in/md-amine-smahi/)

[![Ask Me Anything !](https://img.shields.io/badge/Ask%20me-anything-1abc9c.svg)](https://smahi.me/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](../../issues/).

## Show your support

Give a ⭐️ if you like this project!
<!-- 
## Acknowledgments -->

## 📝 License

This project is [MIT](./MIT.md) licensed.
