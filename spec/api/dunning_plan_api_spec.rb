=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'spec_helper'
require 'json'

# Unit tests for Reepay::DunningPlanApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'DunningPlanApi' do
  before do
    # run before each test
    @instance = Reepay::DunningPlanApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of DunningPlanApi' do
    it 'should create an instance of DunningPlanApi' do
      expect(@instance).to be_instance_of(Reepay::DunningPlanApi)
    end
  end

  # unit tests for create_dunning_plan_json
  # Create dunning plan
  # 
  # @param [Hash] opts the optional parameters
  # @option opts [CreateDunningPlan] :body 
  # @return [DunningPlan]
  describe 'create_dunning_plan_json test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_dunning_plan
  # Delete dunning plan
  # 
  # @param handle Dunning plan handle
  # @param [Hash] opts the optional parameters
  # @return [DunningPlan]
  describe 'delete_dunning_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dunning_plan
  # Get dunning plan
  # 
  # @param handle Dunning plan handle
  # @param [Hash] opts the optional parameters
  # @return [DunningPlan]
  describe 'get_dunning_plan test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_dunning_plans
  # Get list of dunning plans
  # 
  # @param [Hash] opts the optional parameters
  # @return [Array<DunningPlan>]
  describe 'get_dunning_plans test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_json
  # Update dunning plan
  # 
  # @param handle Dunning plan handle
  # @param [Hash] opts the optional parameters
  # @option opts [UpdateDunningPlan] :body 
  # @return [DunningPlan]
  describe 'update_json test' do
    it "should work" do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
