class Person
  constructor: (@id, @name) ->
    
class App
  name: ko.observable("")
  names: ko.observableArray([])
  
  constructor: -> 
    @names.push(
      new Person(0, "Steve"), 
      new Person(1, "Gina")
    )

  addToNames: ->
    @names.push(new Person(@names.length, @name()))
    @name("")
    
  removeName: (nameToRemove) =>
    @names.remove(nameToRemove) if confirm("Are you sure you want to remove " + nameToRemove + "?")
      
$ ->
  viewModel = new App
  ko.applyBindings viewModel