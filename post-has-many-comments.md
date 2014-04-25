---
layout: default
title: Post has_many comments
---

<h1 id="main">Post has_many comments</h1>

###Update file `spec/models/post_spec.rb`

####Add
```
   it { should have_many :comments }
```


####Becomes
```
 require 'spec_helper'
 
 describe Post do
   it { should have_many :comments }
 
   describe '#title' do
     it { expect(subject).to have_valid(:title).when 'X'*5 }
     it { expect(subject).to_not have_valid(:title).when nil, '', 'X'*4 }

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/862aee34efc389501f95df5a375dd4da4ec8dee6)

