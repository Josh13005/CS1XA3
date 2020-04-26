# CS 1XA3 Project03 - <**varugj1**>
## Usage

Activate conda environment with:
```
$ conda activate djangoenv
```
Run locally with:
```
$ python manage.py runserver localhost:8000
```
Run on mac1xa3.ca with:
```
$ python manage.py runserver localhost:10106
```
Log in with testuser[1-6]:
```
testuser1
```
with common password:
```
admin123123
```

## Objective 01
**Description**: 
- This feature is displayed in **signup.djhtml** which is rendered by the function **def signup_view** in **Project03/login/views.py**.
- it makes use of the form ```UserCreationForm()``` which is imported from ```django.contrib.auth.forms``` which is handled by the function **def create_signup_view**.
- It makes a POST request to **/e/varugj1/signup/** and returns a ```HttpResponse```.
- If signup is successfull, the user is redirected to **social/messages/**.

**Exceptions**:
- If the **/e/varugj1/signup/** is called without arguments or if the form is not valid, it redirects to login.djhtml.


## Objective 02
**Description**:
- This feature is displayed in **social_base.djhtml**.
- It displayes the currently logged in user's username and other information regarding the the users **Employment**, **Location**, **Birthday** and **Interests**.

**Exceptions**: **None**

## Objective 03
**Description**:
- This feature is displayed in **account.djhtml** and rendered by the function **def account view** in **Project03/social/views.py**.
- It makes use of the form ```PasswordChangeForm()``` which is imported from ```django.contrib.auth.forms``` which is used to change the password of the current user.
- The user information is changed by getting the POST request from the user which which is obtained from the input tag present in **account.djhtml**.
- Default values are given to the input tag to avoid blank submission of information. Once the details are filled out and saved, the default values change to the information filled earlier.

**Exceptions**:
- If user is not authenticated, the user will be redirected to the login page.
- the Birthday field should always have a valid format **YYYY-MM-DD** and **must** be changed from default value **None**, the first time.

## Objective 04
**Description**:
- This feature is displayed in **people.djhtml** and rendered by the function **def people_view** in **Project03/social/views.py**.
- It sends an AJAX POST through **people.js** to **def more_ppl_view** . 
- When the more button is clicked, upon success of the AJAX POST, the page will reload. A session variable is used to keep track and display one person at a time and the amount of people is reset when the user logs out.
- The function **def people_view** displays all the users who are not the friends of the current user.

**Exception**:
- If user is not authenticated, the user will be redirected to the login page.

## Objective 05
**Description**:
- This feature is displayed in **people.djhtml** and rendered by the function **def people_view** in **Project03/social/views.py**
- The *Friend Request* button is linked to a JQuery event in **people.js**, which uses its id, which contains the ```user_id``` from the **people.djhtml** to send a POST request to the function **def friend_request_view**.
- An instance of **FriendRequest** model is created where the ```to_user``` corresponds to the object of the user the logged-in user is sending friend request to, and ```from_user``` corresponds to the object of the logged-in user, thus adding an entry to **FriendRequest** model.

**Exceptions**:
- If user is not authenticated, the user will be redirected to the login page.
- If the Post data doesnt contain the frID, a 404 - ```HttpResponseNotFound``` is raised.

## Objective 06
**description**:
- This feature is displayed in **people.djhtml** and rendered by the function **def people_view** in **Project03/social/views.py**.
- The *Accept/Decline* button is linked to a JQuery event in **people.js**, which uses its id, which contains the ```user_id``` from the **people.djhtml** to send a POST request to the function **def accept_decline_view**.
- the decision-making is parsed by string slicing the recieved POST Request string. If the decision is Accept (**A**), then the object of the user sending the friend request is added to the logged-in users friends list and vice-versa. The instance of the **FriendRequest** model is then deleted. If the decision is Decline(**D**), the instance of the **FriendRequest** model is deleted.

**Exception**:
- If user is not authenticated, the user will be redirected to the login page.


## Objective 07
**Description**:
- This feature is displayed in **messages.djhtml** and rendered by the function **def messages_view** in **Project03/social/views.py**
- It displayes all the friends of the logged-in user.

**Exception**: None

## Objective 08
**Description**:
- This feature is displayed in **messages.djhtml** and rendered by the function **def messages_view** in **Project03/social/views.py**
- The *post* button is linked to a JQuery event in **messages.js**, which uses the id - ```post-text``` from **messages.djhtml** to send a POST request to the function **def post_submit_view**.
- An instance of the **Post** model is created, where the ```owner``` corresponds to the logged-in user and ```content``` corresponds to the posted content, thus adding a new entry to the Post model.

**Exceptions**
- If user is not authenticated, the user will be redirected to the login page.
- If the Post data doesnt contain ```post-text``` id, a 404 - ```HttpResponseNotFound``` is raised.

## Objective 09
**Description**:
- This feature is displayed in **messages.djhtml** and rendered by the function **def messages_view** in **Project03/social/views.py**
- Real posts are are displayed in **messages.djhtml** and sorted from newest to oldest in the **def messages_view** function.
- It sends an AJAX POST through **messages.js** to **def more_people_view** .
- When the *more* button is clicked, upon success of the AJAX POST, the page will reload. A session variable is used to keep track and display one person at a time and the amount of people is reset when the user logs out.

**Exception**
- If user is not authenticated, the user will be redirected to the login page.

## Objective 10
**Description**: NOT DONE
**Exception**: NOT DONE

## Objective 11
**Description**:
 A test database with **6** users is created. 

| Username | Password |
| ------ | ------ |
| testuser1 | admin123123|
| testuser2 | admin123123|
| testuser3 | admin123123|
| testuser4 | admin123123|
| testuser5 | admin123123|
| testuser6 | admin123123|

**Exceptions** : **N/A**
