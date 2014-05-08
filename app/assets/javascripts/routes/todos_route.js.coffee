EmberTests.TodosRoute = Ember.Route.extend
  model: (params)->
    @store.findAll 'todo'

  setupController: (controller, model)->
    controller.set 'model', model
    controller.set 'incomplete', model.filterProperty 'isCompleted', false
    controller.set 'completed', model.filterProperty 'isCompleted', true