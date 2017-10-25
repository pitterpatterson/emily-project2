
## Links

Heroku:
https://peaceful-sierra-67219.herokuapp.com/

Frontend Repo:
https://github.com/pitterpatterson/emily-fullstack

Deployed URL:
https://pitterpatterson.github.io/emily-fullstack/

ERD:
https://imgur.com/OqwGZ0d

## App Description
The wishlist app gives people the ability to make a wishlist to which they add gifts they would like to receive. That way, with only their email address, their friends can search and find their wishlist online. Wishlist owners have the ability to add, remove, or update the gifts on their wishlists once they are logged in.
Each of the actions a user takes on their list (view, add, edit, delete) is completed using a respective (get, create, update, destroy) ajax call to the backend api.
Users have a one-to-many relationship with gifts.

## Technologies Used
* ruby
* rails
* ajax
* heroku

## Unsolved Issues
There are currently no unsolved issues with the backend of the application.

## Planning
I used the suggested schedule provided to begin my planning process. I took each suggested step (e.g. Sign Up) one at a time and wrote out the steps that I would need to take for it to be successfully implemented (e.g. spin up server, test curl script (what do I expect to be returned?), add ajax call to api file, etc.). I tested every time I had written testable code and committed OFTEN.

One issue I ran into was writing a filter function for my email search capability. I had googled .filter and reviewed the documentation, but I still wasn't getting the results I wanted.

Whenever I find that something isn't working the way that I expect it to, the first thing I do is follow the path the code is taking and write down each action that is triggered and what that action does. It takes a long time and involves a lot of talking to myself, but it usually helps me figure out where the problem is stemming from. This time it didn't do the trick.

Then I console log each one of those steps with "this action is being taken" and "data is , data" to make sure all of the methods are being invoked and calls being made and inputs and outputs are as expected. 99% of the time the console logs will point to what is wrong...and then I hit Google. Often I just need a refresher on syntax or how a method works.

For this specific case I had to write out the object that I was passing to understand how to write the function. It turned out I was referencing the object on .filter and then repeating it within the return, which is WRONG!
