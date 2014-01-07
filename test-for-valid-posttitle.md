---
layout: default
title: Test for valid Post#title
---

<h1 id="main">Test for valid Post#title</h1>
###Update file `spec/models/post_spec.rb`

Change
```
   pending "add some examples to (or delete) #{__FILE__}"
```


To
```
   describe '#title' do
     it { expect(subject).to have_valid(:title).when 'X'*5 }
     it { expect(subject).to_not have_valid(:title).when nil, '', 'X'*4 }
   end
```


Becomes
```
 require 'spec_helper'
 
 describe Post do
   describe '#title' do
     it { expect(subject).to have_valid(:title).when 'X'*5 }
     it { expect(subject).to_not have_valid(:title).when nil, '', 'X'*4 }
   end
 end

```



### Additional Resources

* [Changes in this step in `diff` format](https://github.com/software-academy/rails_getting_started_bdd/commit/5497d64bbca1a4fa27b5a71a1976f50c297c34f8)

