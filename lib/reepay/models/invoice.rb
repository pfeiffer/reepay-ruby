=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class Invoice
    # Invoice id assigned by Reepay
    attr_accessor :id

    # Per account unique handle. Provided at on-demand invoice/charge creation or set to `inv-<invoice_number>` for automatically created subscription invoices
    attr_accessor :handle

    # Customer handle
    attr_accessor :customer

    # Subscription handle, will be null for a one-time customer invoice
    attr_accessor :subscription

    # Subscription plan handle for the plan used to automatically create the invoice or the case that an on-demand subscription invoice has been created that should include a plan order line
    attr_accessor :plan

    # The invoice state one of the following: `created`, `pending`, `dunning`, `settled`, `cancelled`, `authorized`, `failed`
    attr_accessor :state

    # The type of invoice: `s` - subscription recurring, `so` - subscription one-time, `soi` - subscription one-time instant, `co` - customer one-time, `ch` - charge
    attr_accessor :type

    # The invoice amount including VAT
    attr_accessor :amount

    # Sequential invoice number
    attr_accessor :number

    # Currency for the account in [ISO 4217](http://da.wikipedia.org/wiki/ISO_4217) three letter alpha code
    attr_accessor :currency

    # When is the invoice due, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :due

    # When the invoice failed, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :failed

    # When the invoice settled, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :settled

    # When the invoice was cancelled, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :cancelled

    # When the invoice was authorized, if the invoice went through an authorize and settle flow, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :authorized

    # Credits applied to invoice
    attr_accessor :credits

    # When the invoice was created, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :created

    # Subscription plan version
    attr_accessor :plan_version

    # Dunning plan handle
    attr_accessor :dunning_plan

    # The potential discount amount deducted from the invoice amount including VAT
    attr_accessor :discount_amount

    # The invoice original amount including VAT, may differ from amount if adjustments have been applied for the invoice
    attr_accessor :org_amount

    # The invoice vat amount calculated as rounded summed fractional vats for each orderline
    attr_accessor :amount_vat

    # The invoice amount without vat
    attr_accessor :amount_ex_vat

    # Settled amount
    attr_accessor :settled_amount

    # Refunded amount
    attr_accessor :refunded_amount

    # Authorized amount
    attr_accessor :authorized_amount

    # Credited amount
    attr_accessor :credited_amount

    # The subscription period this invoice is for
    attr_accessor :period_number

    # Order lines for invoice sorted by descending timestamp
    attr_accessor :order_lines

    # Additional costs for invoice
    attr_accessor :additional_costs

    # Invoice transactions
    attr_accessor :transactions

    # Invoice credit notes
    attr_accessor :credit_notes

    # When dunning for the invoice was started, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :dunning_start

    # Number of dunning events for invoice (number of reminders sent)
    attr_accessor :dunning_count

    # When dunning for the invoice expired, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :dunning_expired

    # The start of billing period if the invoice is for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :period_from

    # The end of billing period if the invoice is for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :period_to

    # Whether this is a customer one-time invoice that will be settled later
    attr_accessor :settle_later

    # The payment method to use for a later settle of a one-time customer invoice
    attr_accessor :settle_later_payment_method

    # Optional billing address
    attr_accessor :billing_address

    # Optional shipping address
    attr_accessor :shipping_address

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
        :'id' => :'id',
        :'handle' => :'handle',
        :'customer' => :'customer',
        :'subscription' => :'subscription',
        :'plan' => :'plan',
        :'state' => :'state',
        :'type' => :'type',
        :'amount' => :'amount',
        :'number' => :'number',
        :'currency' => :'currency',
        :'due' => :'due',
        :'failed' => :'failed',
        :'settled' => :'settled',
        :'cancelled' => :'cancelled',
        :'authorized' => :'authorized',
        :'credits' => :'credits',
        :'created' => :'created',
        :'plan_version' => :'plan_version',
        :'dunning_plan' => :'dunning_plan',
        :'discount_amount' => :'discount_amount',
        :'org_amount' => :'org_amount',
        :'amount_vat' => :'amount_vat',
        :'amount_ex_vat' => :'amount_ex_vat',
        :'settled_amount' => :'settled_amount',
        :'refunded_amount' => :'refunded_amount',
        :'authorized_amount' => :'authorized_amount',
        :'credited_amount' => :'credited_amount',
        :'period_number' => :'period_number',
        :'order_lines' => :'order_lines',
        :'additional_costs' => :'additional_costs',
        :'transactions' => :'transactions',
        :'credit_notes' => :'credit_notes',
        :'dunning_start' => :'dunning_start',
        :'dunning_count' => :'dunning_count',
        :'dunning_expired' => :'dunning_expired',
        :'period_from' => :'period_from',
        :'period_to' => :'period_to',
        :'settle_later' => :'settle_later',
        :'settle_later_payment_method' => :'settle_later_payment_method',
        :'billing_address' => :'billing_address',
        :'shipping_address' => :'shipping_address'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'handle' => :'String',
        :'customer' => :'String',
        :'subscription' => :'String',
        :'plan' => :'String',
        :'state' => :'String',
        :'type' => :'String',
        :'amount' => :'Integer',
        :'number' => :'Integer',
        :'currency' => :'String',
        :'due' => :'DateTime',
        :'failed' => :'DateTime',
        :'settled' => :'DateTime',
        :'cancelled' => :'DateTime',
        :'authorized' => :'DateTime',
        :'credits' => :'Array<CreditInvoice>',
        :'created' => :'DateTime',
        :'plan_version' => :'Integer',
        :'dunning_plan' => :'String',
        :'discount_amount' => :'Integer',
        :'org_amount' => :'Integer',
        :'amount_vat' => :'Integer',
        :'amount_ex_vat' => :'Integer',
        :'settled_amount' => :'Integer',
        :'refunded_amount' => :'Integer',
        :'authorized_amount' => :'Integer',
        :'credited_amount' => :'Integer',
        :'period_number' => :'Integer',
        :'order_lines' => :'Array<OrderLine>',
        :'additional_costs' => :'Array<String>',
        :'transactions' => :'Array<Transaction>',
        :'credit_notes' => :'Array<InvoiceCreditNote>',
        :'dunning_start' => :'DateTime',
        :'dunning_count' => :'Integer',
        :'dunning_expired' => :'DateTime',
        :'period_from' => :'DateTime',
        :'period_to' => :'DateTime',
        :'settle_later' => :'BOOLEAN',
        :'settle_later_payment_method' => :'String',
        :'billing_address' => :'InvoiceBillingAddress',
        :'shipping_address' => :'InvoiceShippingAddress'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.has_key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.has_key?(:'customer')
        self.customer = attributes[:'customer']
      end

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.has_key?(:'plan')
        self.plan = attributes[:'plan']
      end

      if attributes.has_key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.has_key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'number')
        self.number = attributes[:'number']
      end

      if attributes.has_key?(:'currency')
        self.currency = attributes[:'currency']
      end

      if attributes.has_key?(:'due')
        self.due = attributes[:'due']
      end

      if attributes.has_key?(:'failed')
        self.failed = attributes[:'failed']
      end

      if attributes.has_key?(:'settled')
        self.settled = attributes[:'settled']
      end

      if attributes.has_key?(:'cancelled')
        self.cancelled = attributes[:'cancelled']
      end

      if attributes.has_key?(:'authorized')
        self.authorized = attributes[:'authorized']
      end

      if attributes.has_key?(:'credits')
        if (value = attributes[:'credits']).is_a?(Array)
          self.credits = value
        end
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'plan_version')
        self.plan_version = attributes[:'plan_version']
      end

      if attributes.has_key?(:'dunning_plan')
        self.dunning_plan = attributes[:'dunning_plan']
      end

      if attributes.has_key?(:'discount_amount')
        self.discount_amount = attributes[:'discount_amount']
      end

      if attributes.has_key?(:'org_amount')
        self.org_amount = attributes[:'org_amount']
      end

      if attributes.has_key?(:'amount_vat')
        self.amount_vat = attributes[:'amount_vat']
      end

      if attributes.has_key?(:'amount_ex_vat')
        self.amount_ex_vat = attributes[:'amount_ex_vat']
      end

      if attributes.has_key?(:'settled_amount')
        self.settled_amount = attributes[:'settled_amount']
      end

      if attributes.has_key?(:'refunded_amount')
        self.refunded_amount = attributes[:'refunded_amount']
      end

      if attributes.has_key?(:'authorized_amount')
        self.authorized_amount = attributes[:'authorized_amount']
      end

      if attributes.has_key?(:'credited_amount')
        self.credited_amount = attributes[:'credited_amount']
      end

      if attributes.has_key?(:'period_number')
        self.period_number = attributes[:'period_number']
      end

      if attributes.has_key?(:'order_lines')
        if (value = attributes[:'order_lines']).is_a?(Array)
          self.order_lines = value
        end
      end

      if attributes.has_key?(:'additional_costs')
        if (value = attributes[:'additional_costs']).is_a?(Array)
          self.additional_costs = value
        end
      end

      if attributes.has_key?(:'transactions')
        if (value = attributes[:'transactions']).is_a?(Array)
          self.transactions = value
        end
      end

      if attributes.has_key?(:'credit_notes')
        if (value = attributes[:'credit_notes']).is_a?(Array)
          self.credit_notes = value
        end
      end

      if attributes.has_key?(:'dunning_start')
        self.dunning_start = attributes[:'dunning_start']
      end

      if attributes.has_key?(:'dunning_count')
        self.dunning_count = attributes[:'dunning_count']
      end

      if attributes.has_key?(:'dunning_expired')
        self.dunning_expired = attributes[:'dunning_expired']
      end

      if attributes.has_key?(:'period_from')
        self.period_from = attributes[:'period_from']
      end

      if attributes.has_key?(:'period_to')
        self.period_to = attributes[:'period_to']
      end

      if attributes.has_key?(:'settle_later')
        self.settle_later = attributes[:'settle_later']
      end

      if attributes.has_key?(:'settle_later_payment_method')
        self.settle_later_payment_method = attributes[:'settle_later_payment_method']
      end

      if attributes.has_key?(:'billing_address')
        self.billing_address = attributes[:'billing_address']
      end

      if attributes.has_key?(:'shipping_address')
        self.shipping_address = attributes[:'shipping_address']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if @customer.nil?
        invalid_properties.push("invalid value for 'customer', customer cannot be nil.")
      end

      if @state.nil?
        invalid_properties.push("invalid value for 'state', state cannot be nil.")
      end

      if @type.nil?
        invalid_properties.push("invalid value for 'type', type cannot be nil.")
      end

      if @amount.nil?
        invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end

      if @amount < 0
        invalid_properties.push("invalid value for 'amount', must be greater than or equal to 0.")
      end

      if @number.nil?
        invalid_properties.push("invalid value for 'number', number cannot be nil.")
      end

      if @number < 1
        invalid_properties.push("invalid value for 'number', must be greater than or equal to 1.")
      end

      if @currency.nil?
        invalid_properties.push("invalid value for 'currency', currency cannot be nil.")
      end

      if @due.nil?
        invalid_properties.push("invalid value for 'due', due cannot be nil.")
      end

      if @credits.nil?
        invalid_properties.push("invalid value for 'credits', credits cannot be nil.")
      end

      if @created.nil?
        invalid_properties.push("invalid value for 'created', created cannot be nil.")
      end

      if @discount_amount.nil?
        invalid_properties.push("invalid value for 'discount_amount', discount_amount cannot be nil.")
      end

      if @discount_amount < 0
        invalid_properties.push("invalid value for 'discount_amount', must be greater than or equal to 0.")
      end

      if @org_amount.nil?
        invalid_properties.push("invalid value for 'org_amount', org_amount cannot be nil.")
      end

      if @org_amount < 0
        invalid_properties.push("invalid value for 'org_amount', must be greater than or equal to 0.")
      end

      if @amount_vat.nil?
        invalid_properties.push("invalid value for 'amount_vat', amount_vat cannot be nil.")
      end

      if @amount_ex_vat.nil?
        invalid_properties.push("invalid value for 'amount_ex_vat', amount_ex_vat cannot be nil.")
      end

      if @settled_amount.nil?
        invalid_properties.push("invalid value for 'settled_amount', settled_amount cannot be nil.")
      end

      if @refunded_amount.nil?
        invalid_properties.push("invalid value for 'refunded_amount', refunded_amount cannot be nil.")
      end

      if @order_lines.nil?
        invalid_properties.push("invalid value for 'order_lines', order_lines cannot be nil.")
      end

      if @additional_costs.nil?
        invalid_properties.push("invalid value for 'additional_costs', additional_costs cannot be nil.")
      end

      if @transactions.nil?
        invalid_properties.push("invalid value for 'transactions', transactions cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @handle.nil?
      return false if @customer.nil?
      return false if @state.nil?
      state_validator = EnumAttributeValidator.new('String', ["created", "pending", "dunning", "settled", "authorized", "cancelled", "failed"])
      return false unless state_validator.valid?(@state)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('String', ["s", "so", "soi", "co", "ch"])
      return false unless type_validator.valid?(@type)
      return false if @amount.nil?
      return false if @amount < 0
      return false if @number.nil?
      return false if @number < 1
      return false if @currency.nil?
      return false if @due.nil?
      return false if @credits.nil?
      return false if @created.nil?
      return false if @discount_amount.nil?
      return false if @discount_amount < 0
      return false if @org_amount.nil?
      return false if @org_amount < 0
      return false if @amount_vat.nil?
      return false if @amount_ex_vat.nil?
      return false if @settled_amount.nil?
      return false if @refunded_amount.nil?
      return false if @order_lines.nil?
      return false if @additional_costs.nil?
      return false if @transactions.nil?
      return true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(state)
      validator = EnumAttributeValidator.new('String', ["created", "pending", "dunning", "settled", "authorized", "cancelled", "failed"])
      unless validator.valid?(state)
        fail ArgumentError, "invalid value for 'state', must be one of #{validator.allowable_values}."
      end
      @state = state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('String', ["s", "so", "soi", "co", "ch"])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for 'type', must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Custom attribute writer method with validation
    # @param [Object] amount Value to be assigned
    def amount=(amount)
      if amount.nil?
        fail ArgumentError, "amount cannot be nil"
      end

      if amount < 0
        fail ArgumentError, "invalid value for 'amount', must be greater than or equal to 0."
      end

      @amount = amount
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.nil?
        fail ArgumentError, "number cannot be nil"
      end

      if number < 1
        fail ArgumentError, "invalid value for 'number', must be greater than or equal to 1."
      end

      @number = number
    end

    # Custom attribute writer method with validation
    # @param [Object] discount_amount Value to be assigned
    def discount_amount=(discount_amount)
      if discount_amount.nil?
        fail ArgumentError, "discount_amount cannot be nil"
      end

      if discount_amount < 0
        fail ArgumentError, "invalid value for 'discount_amount', must be greater than or equal to 0."
      end

      @discount_amount = discount_amount
    end

    # Custom attribute writer method with validation
    # @param [Object] org_amount Value to be assigned
    def org_amount=(org_amount)
      if org_amount.nil?
        fail ArgumentError, "org_amount cannot be nil"
      end

      if org_amount < 0
        fail ArgumentError, "invalid value for 'org_amount', must be greater than or equal to 0."
      end

      @org_amount = org_amount
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          handle == o.handle &&
          customer == o.customer &&
          subscription == o.subscription &&
          plan == o.plan &&
          state == o.state &&
          type == o.type &&
          amount == o.amount &&
          number == o.number &&
          currency == o.currency &&
          due == o.due &&
          failed == o.failed &&
          settled == o.settled &&
          cancelled == o.cancelled &&
          authorized == o.authorized &&
          credits == o.credits &&
          created == o.created &&
          plan_version == o.plan_version &&
          dunning_plan == o.dunning_plan &&
          discount_amount == o.discount_amount &&
          org_amount == o.org_amount &&
          amount_vat == o.amount_vat &&
          amount_ex_vat == o.amount_ex_vat &&
          settled_amount == o.settled_amount &&
          refunded_amount == o.refunded_amount &&
          authorized_amount == o.authorized_amount &&
          credited_amount == o.credited_amount &&
          period_number == o.period_number &&
          order_lines == o.order_lines &&
          additional_costs == o.additional_costs &&
          transactions == o.transactions &&
          credit_notes == o.credit_notes &&
          dunning_start == o.dunning_start &&
          dunning_count == o.dunning_count &&
          dunning_expired == o.dunning_expired &&
          period_from == o.period_from &&
          period_to == o.period_to &&
          settle_later == o.settle_later &&
          settle_later_payment_method == o.settle_later_payment_method &&
          billing_address == o.billing_address &&
          shipping_address == o.shipping_address
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, handle, customer, subscription, plan, state, type, amount, number, currency, due, failed, settled, cancelled, authorized, credits, created, plan_version, dunning_plan, discount_amount, org_amount, amount_vat, amount_ex_vat, settled_amount, refunded_amount, authorized_amount, credited_amount, period_number, order_lines, additional_costs, transactions, credit_notes, dunning_start, dunning_count, dunning_expired, period_from, period_to, settle_later, settle_later_payment_method, billing_address, shipping_address].hash
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
