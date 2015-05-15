class TasksController < ApplicationController
  def index

    # Exmplanation:
    #   locals: locals is a parameter to the method render() to indicate that
    #           will be pass a local variable.
    #
    #   tasks: the name of local variable.
    #   tasks: the table.
    #
    render locals: { tasks: rom.relation( :tasks ) }
  end
end
