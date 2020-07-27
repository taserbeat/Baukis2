class Staff::TopController < Staff::Base
  def index
    # reset_session
    render action: 'index'
  end
end
