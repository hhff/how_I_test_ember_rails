#= require application
#= require ember-qunit-suite

#= require_self

#= require_tree ./unit
#= require_tree ./integration

emq.globalize()
setResolver Ember.DefaultResolver.create { namespace: EmberTests }

document.write '<div id="ember-testing-container"><div id="ember-testing"></div></div>'
document.write '<style>#ember-testing-container { position: absolute; background: white; bottom: 0; right: 0; width: 640px; height: 384px; overflow: auto; z-index: 9999; border: 1px solid #ccc; } #ember-testing { zoom: 50%; }</style>'

EmberTests.rootElement = '#ember-testing'
EmberTests.setupForTesting()
EmberTests.injectTestHelpers()

# We call this here instead of each
# module's teardown lifecycle hook.
QUnit.testDone ->
  EmberTests.reset()

# Helper for Finding Elements
(exports ? this).exists = (selector) ->
  return !!find(selector).length