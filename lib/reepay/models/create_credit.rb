=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class CreateCredit
    # Subscription by handle to add the credit to
    attr_accessor :subscription

    # Per account unique handle for the credit. Max length 255 with allowable characters [a-zA-Z0-9_.-@].
    attr_accessor :handle

    # Credit amount in the smallest unit for the account currency
    attr_accessor :amount

    # Text describing the credit. Will be on affected invoices.
    attr_accessor :text

    # Date on the form yyyy-MM-dd from which the credit is valid. The credit will not be deducted from invoices before this date.
    attr_accessor :valid_from


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'subscription' => :'subscription',
        :'handle' => :'handle',
        :'amount' => :'amount',
        :'text' => :'text',
        :'valid_from' => :'valid_from'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'subscription' => :'String',
        :'handle' => :'String',
        :'amount' => :'Integer',
        :'text' => :'String',
        :'valid_from' => :'String'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'subscription')
        self.subscription = attributes[:'subscription']
      end

      if attributes.has_key?(:'handle')
        self.handle = attributes[:'handle']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'text')
        self.text = attributes[:'text']
      end

      if attributes.has_key?(:'valid_from')
        self.valid_from = attributes[:'valid_from']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @subscription.nil?
        invalid_properties.push("invalid value for 'subscription', subscription cannot be nil.")
      end

      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if @amount.nil?
        invalid_properties.push("invalid value for 'amount', amount cannot be nil.")
      end

      if @amount < 0
        invalid_properties.push("invalid value for 'amount', must be greater than or equal to 0.")
      end

      if @text.nil?
        invalid_properties.push("invalid value for 'text', text cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @subscription.nil?
      return false if @handle.nil?
      return false if @amount.nil?
      return false if @amount < 0
      return false if @text.nil?
      return true
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

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          subscription == o.subscription &&
          handle == o.handle &&
          amount == o.amount &&
          text == o.text &&
          valid_from == o.valid_from
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [subscription, handle, amount, text, valid_from].hash
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
