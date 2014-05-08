#= require_tree ../../fixtures

module 'UI: Walkthrough Test'

test 'Sanity Check', ->
  visit('/').then ->
    ok exists '*', 'Found Some HTML'

test 'Input Field Present', ->
  visit('/').then ->
    ok exists '#new-todo-field', 'Input Field Exists!'

test 'Add a Todo', ->
  visit('/').then ->
    fillIn '#new-todo-field', 'Test Task'
    click '#new-todo-button'
    andThen ->
      ok exists $('td.task:contains("Test Task")'), 'Todo Added!'

test 'Delete a Todo', ->
  visit('/').then ->
    click $('td.task:contains("Do Taxes")').parent().find('.delete-button')
    andThen ->
      ok !exists $('td.task:contains("Do Taxes")'), 'Todo Deleted!'