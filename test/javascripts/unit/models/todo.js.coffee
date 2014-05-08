moduleForModel 'todo', 'Model: Todo'

test 'Model is Test Subject, and is a Todo Instance', ->
  todo = @subject()

  ok todo
  ok todo instanceof DS.Model
  ok todo instanceof EmberTests.Todo

test 'Todo can set Name', ->
  todo = @subject()
  todo.set 'name', 'New Task'
  equal todo.get('name'), 'New Task'

test 'Todo can set Completion Status', ->
  todo = @subject()
  todo.set 'isComplete', true
  equal todo.get('isComplete'), true