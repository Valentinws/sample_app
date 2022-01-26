class ApplicationController < ActionController::Base
  
  def hello
    render html: "Salut baiete"
  end
end
