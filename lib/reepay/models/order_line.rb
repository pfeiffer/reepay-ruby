=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class OrderLine
    # Per account unique order line id
    attr_accessor :id

    # Order line text
    attr_accessor :ordertext

    # Order line total amount including vat
    attr_accessor :amount

    # Order line vat percent
    attr_accessor :vat

    # Order line quantity
    attr_accessor :quantity

    # Order line origin, one of the following: `plan`, `add_on`, `ondemand`, `additional_cost`, `credit`, `discount`, `setup_fee`
    attr_accessor :origin

    # Timestamp from order line origin, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :timestamp

    # Order line amount after potential discount has been deducted
    attr_accessor :discounted_amount

    # Order line total vat amount
    attr_accessor :amount_vat

    # Order line total amount without vat
    attr_accessor :amount_ex_vat

    # Order line unit amount including vat
    attr_accessor :unit_amount

    # Order line unit vat amount
    attr_accessor :unit_amount_vat

    # Order line unit amount without vat
    attr_accessor :unit_amount_ex_vat

    # Whether the amount was defined including VAT. E.g. plan amount defined including VAT.
    attr_accessor :amount_defined_incl_vat

    # Handle for additional cost, credit, plan or subscription discount in the case one of those are the origin
    attr_accessor :origin_handle

    # The start of billing period if the order line is a plan order line for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :period_from

    # The end of billing period if the order line is a plan order line for a specific billing period, in [ISO-8601](http://en.wikipedia.org/wiki/ISO_8601) extended offset date-time format.
    attr_accessor :period_to

    # The discount percentage for discount order lines that has a percentage discount
    attr_accessor :discount_percentage

    # For discount order lines a reference to the order line for which the order line is a discount
    attr_accessor :discounted_order_line

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
        :'ordertext' => :'ordertext',
        :'amount' => :'amount',
        :'vat' => :'vat',
        :'quantity' => :'quantity',
        :'origin' => :'origin',
        :'timestamp' => :'timestamp',
        :'discounted_amount' => :'discounted_amount',
        :'amount_vat' => :'amount_vat',
        :'amount_ex_vat' => :'amount_ex_vat',
        :'unit_amount' => :'unit_amount',
        :'unit_amount_vat' => :'unit_amount_vat',
        :'unit_amount_ex_vat' => :'unit_amount_ex_vat',
        :'amount_defined_incl_vat' => :'amount_defined_incl_vat',
        :'origin_handle' => :'origin_handle',
        :'period_from' => :'period_from',
        :'period_to' => :'period_to',
        :'discount_percentage' => :'discount_percentage',
        :'discounted_order_line' => :'discounted_order_line'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'id' => :'String',
        :'ordertext' => :'String',
        :'amount' => :'Integer',
        :'vat' => :'Float',
        :'quantity' => :'Integer',
        :'origin' => :'String',
        :'timestamp' => :'DateTime',
        :'discounted_amount' => :'Integer',
        :'amount_vat' => :'Integer',
        :'amount_ex_vat' => :'Integer',
        :'unit_amount' => :'Integer',
        :'unit_amount_vat' => :'Integer',
        :'unit_amount_ex_vat' => :'Integer',
        :'amount_defined_incl_vat' => :'BOOLEAN',
        :'origin_handle' => :'String',
        :'period_from' => :'DateTime',
        :'period_to' => :'DateTime',
        :'discount_percentage' => :'Integer',
        :'discounted_order_line' => :'String'
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

      if attributes.has_key?(:'ordertext')
        self.ordertext = attributes[:'ordertext']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'vat')
        self.vat = attributes[:'vat']
      end

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'origin')
        self.origin = attributes[:'origin']
      end

      if attributes.has_key?(:'timestamp')
        self.timestamp = attributes[:'timestamp']
      end

      if attributes.has_key?(:'discounted_amount')
        self.discounted_amount = attributes[:'discounted_amount']
      end

      if attributes.has_key?(:'amount_vat')
        self.amount_vat = attributes[:'amount_vat']
      end

      if attributes.has_key?(:'amount_ex_vat')
        self.amount_ex_vat = attributes[:'amount_ex_vat']
      end

      if attributes.has_key?(:'unit_amount')
        self.unit_amount = attributes[:'unit_amount']
      end

      if attributes.has_key?(:'unit_amount_vat')
        self.unit_amount_vat = attributes[:'unit_amount_vat']
      end

      if attributes.has_key?(:'unit_amount_ex_vat')
        self.unit_amount_ex_vat = attributes[:'unit_amount_ex_vat']
      end

      if attributes.has_key?(:'amount_defined_incl_vat')
        self.amount_defined_incl_vat = attributes[:'amount_defined_incl_vat']
      end

      if attributes.has_key?(:'origin_handle')
        self.origin_handle = attributes[:'origin_handle']
      end

      if attributes.has_key?(:'period_from')
        self.period_from = attributes[:'period_from']
      end

      if attributes.has_key?(:'period_to')
        self.period_to = attributes[:'period_to']
      end

      if attributes.has_key?(:'discount_percentage')
        self.discount_percentage = attributes[:'discount_percentage']
      end

      if attributes.has_key?(:'discounted_order_line')
        self.discounted_order_line = attributes[:'discounted_order_line']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push("invalid value for 'id', id cannot be nil.")
      end

      if @ordertext.nil?
        invalid_properties.push("invalid value for 'ordertext', ordertext cannot be nil.")
      end

      if @amount.nil?
        invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end

      if @vat.nil?
        invalid_properties.push("invalid value for 'vat', vat cannot be nil.")
      end

      if @quantity.nil?
        invalid_properties.push("invalid value for 'quantity', quantity cannot be nil.")
      end

      if @quantity < 1
        invalid_properties.push("invalid value for 'quantity', must be greater than or equal to 1.")
      end

      if @origin.nil?
        invalid_properties.push("invalid value for 'origin', origin cannot be nil.")
      end

      if @timestamp.nil?
        invalid_properties.push("invalid value for 'timestamp', timestamp cannot be nil.")
      end

      if @amount_vat.nil?
        invalid_properties.push("invalid value for 'amount_vat', amount_vat cannot be nil.")
      end

      if @amount_ex_vat.nil?
        invalid_properties.push("invalid value for 'amount_ex_vat', amount_ex_vat cannot be nil.")
      end

      if @unit_amount.nil?
        invalid_properties.push("invalid value for 'unit_amount', unit_amount cannot be nil.")
      end

      if @unit_amount_vat.nil?
        invalid_properties.push("invalid value for 'unit_amount_vat', unit_amount_vat cannot be nil.")
      end

      if @unit_amount_ex_vat.nil?
        invalid_properties.push("invalid value for 'unit_amount_ex_vat', unit_amount_ex_vat cannot be nil.")
      end

      if @amount_defined_incl_vat.nil?
        invalid_properties.push("invalid value for 'amount_defined_incl_vat', amount_defined_incl_vat cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @ordertext.nil?
      return false if @amount.nil?
      return false if @vat.nil?
      return false if @quantity.nil?
      return false if @quantity < 1
      return false if @origin.nil?
      origin_validator = EnumAttributeValidator.new('String', ["plan", "add_on", "ondemand", "additional_cost", "credit", "discount", "setup_fee"])
      return false unless origin_validator.valid?(@origin)
      return false if @timestamp.nil?
      return false if @amount_vat.nil?
      return false if @amount_ex_vat.nil?
      return false if @unit_amount.nil?
      return false if @unit_amount_vat.nil?
      return false if @unit_amount_ex_vat.nil?
      return false if @amount_defined_incl_vat.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)
      if quantity.nil?
        fail ArgumentError, "quantity cannot be nil"
      end

      if quantity < 1
        fail ArgumentError, "invalid value for 'quantity', must be greater than or equal to 1."
      end

      @quantity = quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origin Object to be assigned
    def origin=(origin)
      validator = EnumAttributeValidator.new('String', ["plan", "add_on", "ondemand", "additional_cost", "credit", "discount", "setup_fee"])
      unless validator.valid?(origin)
        fail ArgumentError, "invalid value for 'origin', must be one of #{validator.allowable_values}."
      end
      @origin = origin
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          ordertext == o.ordertext &&
          amount == o.amount &&
          vat == o.vat &&
          quantity == o.quantity &&
          origin == o.origin &&
          timestamp == o.timestamp &&
          discounted_amount == o.discounted_amount &&
          amount_vat == o.amount_vat &&
          amount_ex_vat == o.amount_ex_vat &&
          unit_amount == o.unit_amount &&
          unit_amount_vat == o.unit_amount_vat &&
          unit_amount_ex_vat == o.unit_amount_ex_vat &&
          amount_defined_incl_vat == o.amount_defined_incl_vat &&
          origin_handle == o.origin_handle &&
          period_from == o.period_from &&
          period_to == o.period_to &&
          discount_percentage == o.discount_percentage &&
          discounted_order_line == o.discounted_order_line
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [id, ordertext, amount, vat, quantity, origin, timestamp, discounted_amount, amount_vat, amount_ex_vat, unit_amount, unit_amount_vat, unit_amount_ex_vat, amount_defined_incl_vat, origin_handle, period_from, period_to, discount_percentage, discounted_order_line].hash
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