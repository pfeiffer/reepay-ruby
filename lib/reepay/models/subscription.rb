=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class Subscription
    # Per account unique handle for subscription
    attr_accessor :handle

    # Customer handle
    attr_accessor :customer

    # Subscription plan handle
    attr_accessor :plan

    # State of the subscription, one of the following: `active`, `expired`, `on_hold` or `pending`. Active subscriptions can be cancelled and will expire at the end of the current billing period, or later depending on optional notice and fixation periods, this can be checked using the `is_cancelled` parameter and `expires`.
    attr_accessor :state

    # Test flag
    attr_accessor :test

    # Optional custom plan price. If defined the plan price billed for each billing period will be overridden by this price.
    attr_accessor :amount

    # Quantity of the plan product for this subscription.
    attr_accessor :quantity

    # Fixed date when the subscription will expire because of cancellation. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :expires

    # Date when the subscription was reactivated from on hold. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :reactivated

    # Time zone for the subscription as standard time zone id. See [Wikipedia](http://en.wikipedia.org/wiki/List_of_tz_database_time_zones)
    attr_accessor :timezone

    # Date when the subscription was created. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :created

    # Date when the subscription was activated. Will only differ from created in a two step prepared -> activated subscription create scenario. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :activated

    # If the subscription renews at current period end. Also true for subscriptions with manual scheduling.
    attr_accessor :renewing

    # Subscription plan version
    attr_accessor :plan_version

    # If optional custom plan price this parameter tells whether the amount is including VAT
    attr_accessor :amount_incl_vat

    # Date and time from which the subscription is eligible to schedule invoices. Either from create or from the latest reactivate or subscription change. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :start_date

    # Fixed end date and time. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :end_date

    # Grace duration in seconds from the creation of a subscription where no dunning process is started for a failing invoice. This allows a certain amount of time for the customer to sign up with a payment method.
    attr_accessor :grace_duration

    # Start date and time for the current billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :current_period_start

    # Start date and time for the next billing period, and also end date and time for the current billing period. Is also the date and time for next invoice if the subscription is renewing. In ISO-8601 extended offset date-time format.
    attr_accessor :next_period_start

    # Start date and time for the first ever billing period. In ISO-8601 extended offset date-time format.
    attr_accessor :first_period_start

    # Start date and time for the previous billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :last_period_start

    # Start date and time of free trial period. In ISO-8601 extended offset date-time format.
    attr_accessor :trial_start

    # End date and time of free trial period. In ISO-8601 extended offset date-time format.
    attr_accessor :trial_end

    # Whether the subscription has been cancelled. Cancelled subscriptions will expire at the end of the current billing period.
    attr_accessor :is_cancelled

    # Whether the susbcription is in its trial period. If subscription has not started (has_started), trial_start and trial_end can be used to determine if the subscription will have a trial period.
    attr_accessor :in_trial

    # If subscription has a later start date, this parameter tells if the subscription has started. Use this in connection with state to determine if a subscription is active.
    attr_accessor :has_started

    # Number of renewals for the subscription (number of invoices)
    attr_accessor :renewal_count

    # Date when the subscription was cancelled. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :cancelled_date

    # Date when the subscription expired. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :expired_date

    # Reason for expire. Can be `ondemand`, `cancelled`, `dunning` or `fixed` 
    attr_accessor :expire_reason

    # Date when the subscription was put on hold. [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :on_hold_date

    # Reason for on hold. Can be `ondemand` or `dunning` 
    attr_accessor :on_hold_reason

    # Whether the customer at some point has added payment information to the subscription
    attr_accessor :payment_method_added

    # Deprecated - see `pending_change`. If set, a subscription plan change has been scheduled to follow the next renewal. The value is the subscription plan handle to update to.
    attr_accessor :scheduled_plan_change

    # If defined the date a reminder email was sent for the current billing period. In [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :reminder_email_sent

    # Number of failed invoices for this subscription
    attr_accessor :failed_invoices

    # Summed amount for failed invoices
    attr_accessor :failed_amount

    # Number of cancelled invoices for this subscription
    attr_accessor :cancelled_invoices

    # Summed amount for cancelled invoices
    attr_accessor :cancelled_amount

    # Number of pending invoices for this subscription
    attr_accessor :pending_invoices

    # Summed amount for pending invoices
    attr_accessor :pending_amount

    # Number of dunning invoices for this subscription
    attr_accessor :dunning_invoices

    # Summed amount for dunning invoices
    attr_accessor :dunning_amount

    # Number of settled invoices for this subscription
    attr_accessor :settled_invoices

    # Summed settled amount
    attr_accessor :settled_amount

    # Summed refunded amount
    attr_accessor :refunded_amount

    # Number of pending additional costs
    attr_accessor :pending_additional_costs

    # Summed amount of pending additional costs incl vat
    attr_accessor :pending_additional_cost_amount

    # Number of additional costs that have been applied to invoices
    attr_accessor :transferred_additional_costs

    # Summed amount of additional costs that have been applied to invoices
    attr_accessor :transferred_additional_cost_amount

    # Number of credits that have not fully been applied to invoices
    attr_accessor :pending_credits

    # Summed credit amount not yet applied to invoices
    attr_accessor :pending_credit_amount

    # Number of credits that have fully been applied to invoices
    attr_accessor :transferred_credits

    # Summed credit amount that have been applied to invoices
    attr_accessor :transferred_credit_amount

    # Links to hosted pages relating to subscription
    attr_accessor :hosted_page_links

    # List of subscription discounts handles attached to subscription
    attr_accessor :subscription_discounts

    # Pending subscription change to be applied at next renewal
    attr_accessor :pending_change

    # List of subscription changes both at most one pending and previously applied
    attr_accessor :subscription_changes

    # List of subscription add-on handles attached to subscription
    attr_accessor :subscription_add_ons

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'handle' => :'handle',
        :'customer' => :'customer',
        :'plan' => :'plan',
        :'state' => :'state',
        :'test' => :'test',
        :'amount' => :'amount',
        :'quantity' => :'quantity',
        :'expires' => :'expires',
        :'reactivated' => :'reactivated',
        :'timezone' => :'timezone',
        :'created' => :'created',
        :'activated' => :'activated',
        :'renewing' => :'renewing',
        :'plan_version' => :'plan_version',
        :'amount_incl_vat' => :'amount_incl_vat',
        :'start_date' => :'start_date',
        :'end_date' => :'end_date',
        :'grace_duration' => :'grace_duration',
        :'current_period_start' => :'current_period_start',
        :'next_period_start' => :'next_period_start',
        :'first_period_start' => :'first_period_start',
        :'last_period_start' => :'last_period_start',
        :'trial_start' => :'trial_start',
        :'trial_end' => :'trial_end',
        :'is_cancelled' => :'is_cancelled',
        :'in_trial' => :'in_trial',
        :'has_started' => :'has_started',
        :'renewal_count' => :'renewal_count',
        :'cancelled_date' => :'cancelled_date',
        :'expired_date' => :'expired_date',
        :'expire_reason' => :'expire_reason',
        :'on_hold_date' => :'on_hold_date',
        :'on_hold_reason' => :'on_hold_reason',
        :'payment_method_added' => :'payment_method_added',
        :'scheduled_plan_change' => :'scheduled_plan_change',
        :'reminder_email_sent' => :'reminder_email_sent',
        :'failed_invoices' => :'failed_invoices',
        :'failed_amount' => :'failed_amount',
        :'cancelled_invoices' => :'cancelled_invoices',
        :'cancelled_amount' => :'cancelled_amount',
        :'pending_invoices' => :'pending_invoices',
        :'pending_amount' => :'pending_amount',
        :'dunning_invoices' => :'dunning_invoices',
        :'dunning_amount' => :'dunning_amount',
        :'settled_invoices' => :'settled_invoices',
        :'settled_amount' => :'settled_amount',
        :'refunded_amount' => :'refunded_amount',
        :'pending_additional_costs' => :'pending_additional_costs',
        :'pending_additional_cost_amount' => :'pending_additional_cost_amount',
        :'transferred_additional_costs' => :'transferred_additional_costs',
        :'transferred_additional_cost_amount' => :'transferred_additional_cost_amount',
        :'pending_credits' => :'pending_credits',
        :'pending_credit_amount' => :'pending_credit_amount',
        :'transferred_credits' => :'transferred_credits',
        :'transferred_credit_amount' => :'transferred_credit_amount',
        :'hosted_page_links' => :'hosted_page_links',
        :'subscription_discounts' => :'subscription_discounts',
        :'pending_change' => :'pending_change',
        :'subscription_changes' => :'subscription_changes',
        :'subscription_add_ons' => :'subscription_add_ons'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'handle' => :'String',
        :'customer' => :'String',
        :'plan' => :'String',
        :'state' => :'String',
        :'test' => :'BOOLEAN',
        :'amount' => :'Integer',
        :'quantity' => :'Integer',
        :'expires' => :'DateTime',
        :'reactivated' => :'DateTime',
        :'timezone' => :'String',
        :'created' => :'DateTime',
        :'activated' => :'DateTime',
        :'renewing' => :'BOOLEAN',
        :'plan_version' => :'Integer',
        :'amount_incl_vat' => :'BOOLEAN',
        :'start_date' => :'DateTime',
        :'end_date' => :'DateTime',
        :'grace_duration' => :'Integer',
        :'current_period_start' => :'DateTime',
        :'next_period_start' => :'DateTime',
        :'first_period_start' => :'DateTime',
        :'last_period_start' => :'DateTime',
        :'trial_start' => :'DateTime',
        :'trial_end' => :'DateTime',
        :'is_cancelled' => :'BOOLEAN',
        :'in_trial' => :'BOOLEAN',
        :'has_started' => :'BOOLEAN',
        :'renewal_count' => :'Integer',
        :'cancelled_date' => :'DateTime',
        :'expired_date' => :'DateTime',
        :'expire_reason' => :'String',
        :'on_hold_date' => :'DateTime',
        :'on_hold_reason' => :'String',
        :'payment_method_added' => :'BOOLEAN',
        :'scheduled_plan_change' => :'String',
        :'reminder_email_sent' => :'DateTime',
        :'failed_invoices' => :'Integer',
        :'failed_amount' => :'Integer',
        :'cancelled_invoices' => :'Integer',
        :'cancelled_amount' => :'Integer',
        :'pending_invoices' => :'Integer',
        :'pending_amount' => :'Integer',
        :'dunning_invoices' => :'Integer',
        :'dunning_amount' => :'Integer',
        :'settled_invoices' => :'Integer',
        :'settled_amount' => :'Integer',
        :'refunded_amount' => :'Integer',
        :'pending_additional_costs' => :'Integer',
        :'pending_additional_cost_amount' => :'Integer',
        :'transferred_additional_costs' => :'Integer',
        :'transferred_additional_cost_amount' => :'Integer',
        :'pending_credits' => :'Integer',
        :'pending_credit_amount' => :'Integer',
        :'transferred_credits' => :'Integer',
        :'transferred_credit_amount' => :'Integer',
        :'hosted_page_links' => :'SubscriptionLinks',
        :'subscription_discounts' => :'Array<String>',
        :'pending_change' => :'SubscriptionChange',
        :'subscription_changes' => :'Array<SubscriptionChange>',
        :'subscription_add_ons' => :'Array<String>'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'plan')
        self.plan = attributes[:'plan']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'test')
        self.test = attributes[:'test']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'expires')
        self.expires = attributes[:'expires']
      end

      if attributes.has_key?(:'reactivated')
        self.reactivated = attributes[:'reactivated']
      end

      if attributes.has_key?(:'timezone')
        self.timezone = attributes[:'timezone']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'activated')
        self.activated = attributes[:'activated']
      end

      if attributes.has_key?(:'renewing')
        self.renewing = attributes[:'renewing']
      end

      if attributes.has_key?(:'plan_version')
        self.plan_version = attributes[:'plan_version']
      end

      if attributes.has_key?(:'amount_incl_vat')
        self.amount_incl_vat = attributes[:'amount_incl_vat']
      end

      if attributes.has_key?(:'start_date')
        self.start_date = attributes[:'start_date']
      end

      if attributes.has_key?(:'end_date')
        self.end_date = attributes[:'end_date']
      end

      if attributes.has_key?(:'grace_duration')
        self.grace_duration = attributes[:'grace_duration']
      end

      if attributes.has_key?(:'current_period_start')
        self.current_period_start = attributes[:'current_period_start']
      end

      if attributes.has_key?(:'next_period_start')
        self.next_period_start = attributes[:'next_period_start']
      end

      if attributes.has_key?(:'first_period_start')
        self.first_period_start = attributes[:'first_period_start']
      end

      if attributes.has_key?(:'last_period_start')
        self.last_period_start = attributes[:'last_period_start']
      end

      if attributes.has_key?(:'trial_start')
        self.trial_start = attributes[:'trial_start']
      end

      if attributes.has_key?(:'trial_end')
        self.trial_end = attributes[:'trial_end']
      end

      if attributes.has_key?(:'is_cancelled')
        self.is_cancelled = attributes[:'is_cancelled']
      end

      if attributes.has_key?(:'in_trial')
        self.in_trial = attributes[:'in_trial']
      end

      if attributes.has_key?(:'has_started')
        self.has_started = attributes[:'has_started']
      end

      if attributes.has_key?(:'renewal_count')
        self.renewal_count = attributes[:'renewal_count']
      end

      if attributes.has_key?(:'cancelled_date')
        self.cancelled_date = attributes[:'cancelled_date']
      end

      if attributes.has_key?(:'expired_date')
        self.expired_date = attributes[:'expired_date']
      end

      if attributes.has_key?(:'expire_reason')
        self.expire_reason = attributes[:'expire_reason']
      end

      if attributes.has_key?(:'on_hold_date')
        self.on_hold_date = attributes[:'on_hold_date']
      end

      if attributes.has_key?(:'on_hold_reason')
        self.on_hold_reason = attributes[:'on_hold_reason']
      end

      if attributes.has_key?(:'payment_method_added')
        self.payment_method_added = attributes[:'payment_method_added']
      end

      if attributes.has_key?(:'scheduled_plan_change')
        self.scheduled_plan_change = attributes[:'scheduled_plan_change']
      end

      if attributes.has_key?(:'reminder_email_sent')
        self.reminder_email_sent = attributes[:'reminder_email_sent']
      end

      if attributes.has_key?(:'failed_invoices')
        self.failed_invoices = attributes[:'failed_invoices']
      end

      if attributes.has_key?(:'failed_amount')
        self.failed_amount = attributes[:'failed_amount']
      end

      if attributes.has_key?(:'cancelled_invoices')
        self.cancelled_invoices = attributes[:'cancelled_invoices']
      end

      if attributes.has_key?(:'cancelled_amount')
        self.cancelled_amount = attributes[:'cancelled_amount']
      end

      if attributes.has_key?(:'pending_invoices')
        self.pending_invoices = attributes[:'pending_invoices']
      end

      if attributes.has_key?(:'pending_amount')
        self.pending_amount = attributes[:'pending_amount']
      end

      if attributes.has_key?(:'dunning_invoices')
        self.dunning_invoices = attributes[:'dunning_invoices']
      end

      if attributes.has_key?(:'dunning_amount')
        self.dunning_amount = attributes[:'dunning_amount']
      end

      if attributes.has_key?(:'settled_invoices')
        self.settled_invoices = attributes[:'settled_invoices']
      end

      if attributes.has_key?(:'settled_amount')
        self.settled_amount = attributes[:'settled_amount']
      end

      if attributes.has_key?(:'refunded_amount')
        self.refunded_amount = attributes[:'refunded_amount']
      end

      if attributes.has_key?(:'pending_additional_costs')
        self.pending_additional_costs = attributes[:'pending_additional_costs']
      end

      if attributes.has_key?(:'pending_additional_cost_amount')
        self.pending_additional_cost_amount = attributes[:'pending_additional_cost_amount']
      end

      if attributes.has_key?(:'transferred_additional_costs')
        self.transferred_additional_costs = attributes[:'transferred_additional_costs']
      end

      if attributes.has_key?(:'transferred_additional_cost_amount')
        self.transferred_additional_cost_amount = attributes[:'transferred_additional_cost_amount']
      end

      if attributes.has_key?(:'pending_credits')
        self.pending_credits = attributes[:'pending_credits']
      end

      if attributes.has_key?(:'pending_credit_amount')
        self.pending_credit_amount = attributes[:'pending_credit_amount']
      end

      if attributes.has_key?(:'transferred_credits')
        self.transferred_credits = attributes[:'transferred_credits']
      end

      if attributes.has_key?(:'transferred_credit_amount')
        self.transferred_credit_amount = attributes[:'transferred_credit_amount']
      end

      if attributes.has_key?(:'hosted_page_links')
        self.hosted_page_links = attributes[:'hosted_page_links']
      end

      if attributes.has_key?(:'subscription_discounts')
        if (value = attributes[:'subscription_discounts']).is_a?(Array)
          self.subscription_discounts = value
        end
      end

      if attributes.has_key?(:'pending_change')
        self.pending_change = attributes[:'pending_change']
      end

      if attributes.has_key?(:'subscription_changes')
        if (value = attributes[:'subscription_changes']).is_a?(Array)
          self.subscription_changes = value
        end
      end

      if attributes.has_key?(:'subscription_add_ons')
        if (value = attributes[:'subscription_add_ons']).is_a?(Array)
          self.subscription_add_ons = value
        end
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if @customer.nil?
        invalid_properties.push("invalid value for 'customer', customer cannot be nil.")
      end

      if @plan.nil?
        invalid_properties.push("invalid value for 'plan', plan cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @test.nil?
        invalid_properties.push("invalid value for 'test', test cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @timezone.nil?
        invalid_properties.push("invalid value for 'timezone', timezone cannot be nil.")
      end

      if @created.nil?
        invalid_properties.push("invalid value for 'created', created cannot be nil.")
      end

      if @renewing.nil?
        invalid_properties.push("invalid value for 'renewing', renewing cannot be nil.")
      end

      if @plan_version.nil?
        invalid_properties.push("invalid value for 'plan_version', plan_version cannot be nil.")
      end

      if @start_date.nil?
        invalid_properties.push("invalid value for 'start_date', start_date cannot be nil.")
      end

      if @is_cancelled.nil?
        invalid_properties.push("invalid value for 'is_cancelled', is_cancelled cannot be nil.")
      end

      if @in_trial.nil?
        invalid_properties.push("invalid value for 'in_trial', in_trial cannot be nil.")
      end

      if @has_started.nil?
        invalid_properties.push("invalid value for 'has_started', has_started cannot be nil.")
      end

      if @renewal_count.nil?
        invalid_properties.push("invalid value for 'renewal_count', renewal_count cannot be nil.")
      end

      if @renewal_count < 0
        invalid_properties.push("invalid value for 'renewal_count', must be greater than or equal to 0.")
      end

      if @payment_method_added.nil?
        invalid_properties.push("invalid value for 'payment_method_added', payment_method_added cannot be nil.")
      end

      if @reminder_email_sent.nil?
        invalid_properties.push("invalid value for 'reminder_email_sent', reminder_email_sent cannot be nil.")
      end

      if @failed_invoices.nil?
        invalid_properties.push("invalid value for 'failed_invoices', failed_invoices cannot be nil.")
      end

      if @failed_amount.nil?
        invalid_properties.push("invalid value for 'failed_amount', failed_amount cannot be nil.")
      end

      if @cancelled_invoices.nil?
        invalid_properties.push("invalid value for 'cancelled_invoices', cancelled_invoices cannot be nil.")
      end

      if @cancelled_amount.nil?
        invalid_properties.push("invalid value for 'cancelled_amount', cancelled_amount cannot be nil.")
      end

      if @pending_invoices.nil?
        invalid_properties.push("invalid value for 'pending_invoices', pending_invoices cannot be nil.")
      end

      if @pending_amount.nil?
        invalid_properties.push("invalid value for 'pending_amount', pending_amount cannot be nil.")
      end

      if @dunning_invoices.nil?
        invalid_properties.push("invalid value for 'dunning_invoices', dunning_invoices cannot be nil.")
      end

      if @dunning_amount.nil?
        invalid_properties.push("invalid value for 'dunning_amount', dunning_amount cannot be nil.")
      end

      if @settled_invoices.nil?
        invalid_properties.push("invalid value for 'settled_invoices', settled_invoices cannot be nil.")
      end

      if @settled_amount.nil?
        invalid_properties.push("invalid value for 'settled_amount', settled_amount cannot be nil.")
      end

      if @refunded_amount.nil?
        invalid_properties.push("invalid value for 'refunded_amount', refunded_amount cannot be nil.")
      end

      if @pending_additional_costs.nil?
        invalid_properties.push("invalid value for 'pending_additional_costs', pending_additional_costs cannot be nil.")
      end

      if @pending_additional_cost_amount.nil?
        invalid_properties.push("invalid value for 'pending_additional_cost_amount', pending_additional_cost_amount cannot be nil.")
      end

      if @transferred_additional_costs.nil?
        invalid_properties.push("invalid value for 'transferred_additional_costs', transferred_additional_costs cannot be nil.")
      end

      if @transferred_additional_cost_amount.nil?
        invalid_properties.push("invalid value for 'transferred_additional_cost_amount', transferred_additional_cost_amount cannot be nil.")
      end

      if @pending_credits.nil?
        invalid_properties.push("invalid value for 'pending_credits', pending_credits cannot be nil.")
      end

      if @pending_credit_amount.nil?
        invalid_properties.push("invalid value for 'pending_credit_amount', pending_credit_amount cannot be nil.")
      end

      if @transferred_credits.nil?
        invalid_properties.push("invalid value for 'transferred_credits', transferred_credits cannot be nil.")
      end

      if @transferred_credit_amount.nil?
        invalid_properties.push("invalid value for 'transferred_credit_amount', transferred_credit_amount cannot be nil.")
      end

      if @hosted_page_links.nil?
        invalid_properties.push("invalid value for 'hosted_page_links', hosted_page_links cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @handle.nil?
      return false if @customer.nil?
      return false if @plan.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["active", "expired", "on_hold", "pending"])
      return false unless state_validator.valid?(@state)
      return false if @test.nil?
      return false if @quantity.nil?
      return false if @timezone.nil?
      return false if @created.nil?
      return false if @renewing.nil?
      return false if @plan_version.nil?
      return false if @start_date.nil?
      return false if @is_cancelled.nil?
      return false if @in_trial.nil?
      return false if @has_started.nil?
      return false if @renewal_count.nil?
      return false if @renewal_count < 0
      expire_reason_validator = EnumAttributeValidator.new('String', ["dunning", "cancelled", "ondemand", "fixed"])
      return false unless expire_reason_validator.valid?(@expire_reason)
      on_hold_reason_validator = EnumAttributeValidator.new('String', ["dunning", "ondemand"])
      return false unless on_hold_reason_validator.valid?(@on_hold_reason)
      return false if @payment_method_added.nil?
      return false if @reminder_email_sent.nil?
      return false if @failed_invoices.nil?
      return false if @failed_amount.nil?
      return false if @cancelled_invoices.nil?
      return false if @cancelled_amount.nil?
      return false if @pending_invoices.nil?
      return false if @pending_amount.nil?
      return false if @dunning_invoices.nil?
      return false if @dunning_amount.nil?
      return false if @settled_invoices.nil?
      return false if @settled_amount.nil?
      return false if @refunded_amount.nil?
      return false if @pending_additional_costs.nil?
      return false if @pending_additional_cost_amount.nil?
      return false if @transferred_additional_costs.nil?
      return false if @transferred_additional_cost_amount.nil?
      return false if @pending_credits.nil?
      return false if @pending_credit_amount.nil?
      return false if @transferred_credits.nil?
      return false if @transferred_credit_amount.nil?
      return false if @hosted_page_links.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["active", "expired", "on_hold", "pending"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method with validation
    # @param [Object] renewal_count Value to be assigned
    def renewal_count=(renewal_count)
      if renewal_count.nil?
        fail ArgumentError, "renewal_count cannot be nil"
      end

      if renewal_count < 0
        fail ArgumentError, "invalid value for 'renewal_count', must be greater than or equal to 0."
      end

      @renewal_count = renewal_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expire_reason Object to be assigned
    def expire_reason=(expire_reason)
      validator = EnumAttributeValidator.new('String', ["dunning", "cancelled", "ondemand", "fixed"])
      unless validator.valid?(expire_reason)
        fail ArgumentError, "invalid value for 'expire_reason', must be one of #{validator.allowable_values}."
      end
      @expire_reason = expire_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_hold_reason Object to be assigned
    def on_hold_reason=(on_hold_reason)
      validator = EnumAttributeValidator.new('String', ["dunning", "ondemand"])
      unless validator.valid?(on_hold_reason)
        fail ArgumentError, "invalid value for 'on_hold_reason', must be one of #{validator.allowable_values}."
      end
      @on_hold_reason = on_hold_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          handle == o.handle &&
          customer == o.customer &&
          plan == o.plan &&
          state == o.state &&
          test == o.test &&
          amount == o.amount &&
          quantity == o.quantity &&
          expires == o.expires &&
          reactivated == o.reactivated &&
          timezone == o.timezone &&
          created == o.created &&
          activated == o.activated &&
          renewing == o.renewing &&
          plan_version == o.plan_version &&
          amount_incl_vat == o.amount_incl_vat &&
          start_date == o.start_date &&
          end_date == o.end_date &&
          grace_duration == o.grace_duration &&
          current_period_start == o.current_period_start &&
          next_period_start == o.next_period_start &&
          first_period_start == o.first_period_start &&
          last_period_start == o.last_period_start &&
          trial_start == o.trial_start &&
          trial_end == o.trial_end &&
          is_cancelled == o.is_cancelled &&
          in_trial == o.in_trial &&
          has_started == o.has_started &&
          renewal_count == o.renewal_count &&
          cancelled_date == o.cancelled_date &&
          expired_date == o.expired_date &&
          expire_reason == o.expire_reason &&
          on_hold_date == o.on_hold_date &&
          on_hold_reason == o.on_hold_reason &&
          payment_method_added == o.payment_method_added &&
          scheduled_plan_change == o.scheduled_plan_change &&
          reminder_email_sent == o.reminder_email_sent &&
          failed_invoices == o.failed_invoices &&
          failed_amount == o.failed_amount &&
          cancelled_invoices == o.cancelled_invoices &&
          cancelled_amount == o.cancelled_amount &&
          pending_invoices == o.pending_invoices &&
          pending_amount == o.pending_amount &&
          dunning_invoices == o.dunning_invoices &&
          dunning_amount == o.dunning_amount &&
          settled_invoices == o.settled_invoices &&
          settled_amount == o.settled_amount &&
          refunded_amount == o.refunded_amount &&
          pending_additional_costs == o.pending_additional_costs &&
          pending_additional_cost_amount == o.pending_additional_cost_amount &&
          transferred_additional_costs == o.transferred_additional_costs &&
          transferred_additional_cost_amount == o.transferred_additional_cost_amount &&
          pending_credits == o.pending_credits &&
          pending_credit_amount == o.pending_credit_amount &&
          transferred_credits == o.transferred_credits &&
          transferred_credit_amount == o.transferred_credit_amount &&
          hosted_page_links == o.hosted_page_links &&
          subscription_discounts == o.subscription_discounts &&
          pending_change == o.pending_change &&
          subscription_changes == o.subscription_changes &&
          subscription_add_ons == o.subscription_add_ons
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [handle, customer, plan, state, test, amount, quantity, expires, reactivated, timezone, created, activated, renewing, plan_version, amount_incl_vat, start_date, end_date, grace_duration, current_period_start, next_period_start, first_period_start, last_period_start, trial_start, trial_end, is_cancelled, in_trial, has_started, renewal_count, cancelled_date, expired_date, expire_reason, on_hold_date, on_hold_reason, payment_method_added, scheduled_plan_change, reminder_email_sent, failed_invoices, failed_amount, cancelled_invoices, cancelled_amount, pending_invoices, pending_amount, dunning_invoices, dunning_amount, settled_invoices, settled_amount, refunded_amount, pending_additional_costs, pending_additional_cost_amount, transferred_additional_costs, transferred_additional_cost_amount, pending_credits, pending_credit_amount, transferred_credits, transferred_credit_amount, hosted_page_links, subscription_discounts, pending_change, subscription_changes, subscription_add_ons].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.swagger_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map{ |v| _deserialize($1, v) } )
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end # or else data not found in attributes(hash), not an issue as the data can be optional
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :BOOLEAN
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        temp_model = Reepay.const_get(type).new
        temp_model.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        next if value.nil?
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map{ |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
