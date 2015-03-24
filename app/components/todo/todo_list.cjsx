todoActions = require 'actions/todo_actions'
TodoItem = require './todo_item'

module.exports = React.createClass

  mixins: [
    Router.State
  ]

  propTypes:
    list: React.PropTypes.arrayOf(React.PropTypes.object).isRequired

  toggleAll: (event) ->
    todoActions.toggleAllItems event.target.checked

  render: ->
    list = switch @getPath()
      when '/completed'
        _.filter @props.list, (item) -> item.isCompleted
      when '/active'
        _.filter @props.list, (item) -> not item.isCompleted
      else
        @props.list

    <section id="main" className={classNames hidden: @props.list.length < 1}>
      <input id="toggle-all" type="checkbox", onChange={this.toggleAll} />
      <label htmlFor="toggle-all">Mark all as complete</label>
      <ul id="todo-list">
        {
          _.map list, (item, i) ->
            <TodoItem label={item.label} isCompleted={item.isCompleted} id={i} key={i} />
        }
      </ul>
    </section>
