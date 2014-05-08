EmberTests.TodoTableComponent = Ember.Component.extend

  actions:
    updateTodo: (todo)->
      @sendAction 'updateTodo', todo

    deleteTodo: (todo)->
      @sendAction 'deleteTodo', todo
