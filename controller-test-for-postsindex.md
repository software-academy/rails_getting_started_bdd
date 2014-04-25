---
layout: default
title: Controller test for posts#index
---

<h1 id="main">Controller test for posts#index</h1>

###Update file `spec/controllers/posts_controller_spec.rb`

####Add
```
 
   describe 'GET #index' do
     it "returns http success" do
       get :index
       response.should be_success
     end
   end
```


####Becomes
```
       expect(response).to redirect_to assigns[:post]
     end
   end
 
   describe 'GET #index' do
     it "returns http success" do
       get :index
       response.should be_success
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/e3323a88b5bb9321d628b101f2277e8052ac2f51)

