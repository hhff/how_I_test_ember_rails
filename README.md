How I Test Ember Rails
======================

A basic Ember / Rails / Ember Data App boilerplate running QUnit and Teaspoon.

### Setup

    bundle
    rails s
    
Play with the app a little, then head to localhost:3000/teaspoon

### Notes

In particular, checkout

    test/javascripts/test_helper.coffee
    
To see how I'm setting up the Test App, and note that the tests themselves are required last.

### Required Reading

[Ember QUnit Suite](https://github.com/rpflorence/ember-qunit) from [@rpflorence](https://github.com/rpflorence)

[Ember's Injected Test Helpers](http://emberjs.com/guides/testing/test-helpers/)

Ember's Guides on [Integration Testing](http://emberjs.com/guides/testing/integration/) and [using the above suite](http://emberjs.com/guides/testing/unit-test-helpers/).

Pixelhandler's post on [Ember Testing](http://pixelhandler.com/posts/testing-an-ember-application-integration-and-unit-tests)
