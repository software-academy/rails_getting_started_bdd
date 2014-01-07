---
layout: default
title: Good RSpec, use expect instead of should
---

<h1 id="main">Good RSpec, use expect instead of should</h1>
###Update file `spec/controllers/posts_controller_spec.rb`

Change
```
       response.should be_success
```


To
```
       expect(response).to be_success
```


Becomes
```
   describe 'GET #new' do
     it "returns http success" do
       get :new
       expect(response).to be_success
     end
   end
 

```


Change
```
       response.should be_success
```


To
```
       expect(response).to be_success
```


Becomes
```
   describe 'GET #index' do
     it "returns http success" do
       get :index
       expect(response).to be_success
     end
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/be54eb69ef1a3179bf7b36344de9c7a3759824ea)

