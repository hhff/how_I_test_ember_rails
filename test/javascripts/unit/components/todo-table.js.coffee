moduleForComponent 'todo-table', 'Component: Todo Table'

test 'Todo Table is Test Subject', ->
  table = @subject()

  ok table
  ok table instanceof Ember.Component
  ok table instanceof EmberTests.TodoTableComponent