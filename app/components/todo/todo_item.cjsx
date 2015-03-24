todoActions = require 'actions/todo_actions'

module.exports = React.createClass

  propTypes:
    label: React.PropTypes.string.isRequired
    isCompleted: React.PropTypes.bool.isRequired
    id: React.PropTypes.number

  getInitialState: ->
    isEditing: false
    editValue: @props.label

  handleToggle: ->
    todoActions.toggleItem @props.id

  handleEditStart: (event) ->
    event.preventDefault()
    @setState
      isEditing: true
      editValue: @props.label
    , ->
      @refs.editInput.getDOMNode().focus()

  handleChange: (event) ->
    @setState editValue: event.target.value

  handleValueChange: (event) ->
    text = @state.editValue
    if event.which is 13 and text
      @refs.editInput.getDOMNode().blur()
    else if event.which is 27
      @setState
        isEditing: false
      , ->
        @refs.editInput.getDOMNode().blur()

  handleBlur: ->
    text = @state.editValue
    if @state.isEditing and text
      todoActions.editItem @props.id, text
    @setState isEditing: false

  handleDestroy: ->
    todoActions.removeItem @props.id

  render: ->
    <li className={classNames {completed: @props.isCompleted, editing: @state.isEditing}}>
      <div className="view">
        <input className="toggle" type="checkbox" checked={not @props.isCompleted} onChange={@handleToggle} />
        <label onDoubleClick={@handleEditStart}>{@props.label}</label>
        <button className="destroy" onClick={@handleDestroy}></button>
      </div>
      <input ref="editInput" className="edit" value={@state.editValue} onChange={@handleChange} onKeyUp={@handleValueChange} onBlur={@handleBlur} />
    </li>
