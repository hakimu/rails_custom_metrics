class TestControllerController < ApplicationController
  def display
  	# @number = rand(100)
  	::NewRelic::Agent.record_metric('Custom/testing/my_controller',1)
  end
end
