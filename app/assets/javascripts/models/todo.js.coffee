# for more details see: http://emberjs.com/guides/models/defining-models/

EmberTests.Todo = DS.Model.extend
  title: DS.attr 'string'
  isCompleted: DS.attr 'boolean'
