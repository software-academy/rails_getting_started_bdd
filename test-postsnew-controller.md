---
layout: default
title: Test posts#new controller
---

<h1 id="main">Test posts#new controller</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
   describe "GET 'new'" do
     it "returns http success" do
       get 'new'
       response.should be_success
     end
   end
```


####Becomes
```
 
 describe PostsController do
 
   describe "GET 'new'" do
     it "returns http success" do
       get 'new'
       response.should be_success
     end
   end
 
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/f146d830559f018de9f0ba25843c82a551a01913)

