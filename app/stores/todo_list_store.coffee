todoActions = require 'actions/todo_actions'

module.exports = Reflux.createStore

  listenables: [todoActions]

  init: ->
    @list = JSON.parse(localStorage.todos or '[]')

  updateList: (list) ->
    localStorage.todos = JSON.stringify list
    @list = list
    @trigger list

  onAddItem: (label) ->
    @updateList [
      created: new Date
      isCompleted: false
      label: label
    ].concat @list

  onEditItem: (index, label) ->
    @list[index].label = label
    @updateList @list

  onRemoveItem: (index) ->
    @updateList _.reject @list, (item, i) ->
      String(i) is String(index)

  onToggleItem: (index) ->
    item = @list[index]
    item.isCompleted = not item.isCompleted
    @updateList @list

  onToggleAllItems: (checked) ->
    @updateList _.map @list, (item) ->
      item.isCompleted = checked
      item

  onClearCompleted: ->
    @updateList _.filter @list, (item) ->
      not item.isCompleted
