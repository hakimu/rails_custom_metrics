# Added a transaction tracer to this custom metric to get it report as a top level transaction
require 'new_relic/agent/method_tracer'

class TestControllerController < ApplicationController
	include NewRelic::Agent::Instrumentation::ControllerInstrumentation
  def display
  	@number = rand(100)
  	::NewRelic::Agent.record_metric('Custom/testing/my_controller', @number)
  end
  add_transaction_tracer :display
end


