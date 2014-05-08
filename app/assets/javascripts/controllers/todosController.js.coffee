EmberTests.TodosController = Ember.ArrayController.extend

  returnFiltered: ()->
    @set 'incomplete', @get('model').filterProperty 'isCompleted', false
    @set 'completed', @get('model').filterProperty 'isCompleted', true

  actions:
    saveNewTodo: (newTodo)->
      @set 'newTodo', ''

      todo = @store.createRecord 'todo', {
        title: newTodo
        isCompleted: false
      }

      todo.save().then ()=>
        @returnFiltered()

    updateTodo: (todo)->
      todo.set 'isCompleted', !todo.get 'isCompleted'

      todo.save().then ()=>
        @returnFiltered()

    deleteTodo: (todo)->
      todo.destroyRecord().then ()=>
        @returnFiltered()