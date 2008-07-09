= Obsidian

== DESCRIPTION

Obsidian. It's metastable. 

In the tangible world, obsidian is a naturally-occurring glass that is metastable at the earth's
surface. It's commonly found within the margins of rhyolitic lava flows, where cooling of the lava is
rapid. [1] In the slightly less tangible world of programming, <b>Obsidian</b> is home to chunks of
Ruby code that we've found helpful. These bits of code are often found at the bottom of a mountain of
yak hair, the occasionally-occurring product of simplifying various tasks.

  1 http://en.wikipedia.org/wiki/Obsidian

== FEATURES

=== Model Update Tracker
This library allows you to functionally test updates to models with clearer and more focused intent.
It forces you to have a better understanding of how your objects interact and lets you demonstrate 
that knowledge by specifying it in your tests.  For example, consider the following test which asserts
that the code block persists an Asset record.  

  assert_difference Asset :count do
    post :create, :asset => {}
  end

Is it okay if the code block also persists a Location record? An AssetOwner record? Some other record?
Chances are that the developer knows the answer to this question, but the test fails to capture that
knowledge. Side effects matter, and our tests should adequately validate that the desired side effects
(and <i>only</i> the desired side effects) are taking place. In the example below, assert_models_created
allows us to validate that an Asset is created <i>and</i> that no other objects are inadvertently
persisted.

  assert_models_created(Asset) do
    post :create, :asset => {}
  end

If the code block happened to create records other than just an Asset, a friendly test failure would let
you know right away.

Suppose, on the other hand, that you expect the creation of an Asset to <i>also</i> produce an AssetOwner
and a Location. This is where you exercise your deep domain knowledge muscles and make your new
Obsidian-powered test express and validate your intent.

  assert_models_created(Asset, AssetOwner, Location) do
    post: create, :asset => {}
  end

Now, if your code block fails to create the expected records, the above test would fail stating that it
expected more to happen. If future changes to your code cause things to fall out of place, this test will
catch that regression where the original assert_difference may not. In addition to assert_models_created,
Model Update Tracker provides a whole host of other methods that provide similar functionality for
asserting behavior related to updates, deletes, or even validating that nothing happened.

* assert_models_created(models)
* assert_models_updated(models)
* assert_models_destroyed(models)
* assert_no_models_created
* assert_no_models_destroyed
* assert_no_models_updated

== INSTALL

  sudo gem install obsidian

== URLS

* Log bugs, issues, and suggestions on Trac: http://opensource.thinkrelevance.com/wiki/obsidian
* View Source: http://github.com/relevance/obsidian/tree/master
* Git clone Source: git://github.com/relevance/obsidian.git
* RDocs: http://thinkrelevance.rubyforge.org/obsidian/

== LICENSE

(The MIT License)

Copyright (c) 2008 Relevance, Inc. - http://thinkrelevance.com

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
'Software'), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY
CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT,
TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE
SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
