class TasksController < ApplicationController
  def index

    # Explanation:
    #   locals: locals is a parameter to the method render() to indicate that
    #           will be pass a local variable.
    #
    #   first tasks: the name of local variable.
    #   second tasks: the table.
    #
    render locals: { tasks: rom.relation( :tasks ) }
  end
end
