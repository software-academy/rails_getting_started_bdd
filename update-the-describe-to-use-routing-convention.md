---
layout: default
title: Update the describe to use routing convention
---

<h1 id="main">Update the describe to use routing convention</h1>

###Update file `spec/controllers/posts_controller_spec.rb`

####Change
```
   describe "GET 'new'" do
```


####To
```
   describe 'GET #new' do
```


####Change
```
       get 'new'
```


####To
```
       get :new
```


####Becomes
```
 
 describe PostsController do
 
   describe 'GET #new' do
     it "returns http success" do
       get :new
       response.should be_success
     end
   end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/db27eb800b64e9e470f8fc85501a95634b287256)

