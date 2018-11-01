=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay

  class SubscriptionAddOn
    # Per subscription unique handle for the subscription add-on.
    attr_accessor :handle

    # Quantity of the subscription add-on. Only defined for quantity type add-ons
    attr_accessor :quantity

    # Fixed subscription add-on per quantity price. If not defined the subscription add-on uses the add-on price.
    attr_accessor :amount

    # Date when the subscription add-on was created. In ISO-8601 extended offset date-time format.
    attr_accessor :created

    # Add-on for subscription add-on
    attr_accessor :add_on

    # If fixed price this parameter tells whether the amount is including VAT
    attr_accessor :amount_incl_vat


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'handle' => :'handle',
        :'quantity' => :'quantity',
        :'amount' => :'amount',
        :'created' => :'created',
        :'add_on' => :'add_on',
        :'amount_incl_vat' => :'amount_incl_vat'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'handle' => :'String',
        :'quantity' => :'Integer',
        :'amount' => :'Integer',
        :'created' => :'DateTime',
        :'add_on' => :'AddOn',
        :'amount_incl_vat' => :'BOOLEAN'
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

      if attributes.has_key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.has_key?(:'amount')
        self.amount = attributes[:'amount']
      end

      if attributes.has_key?(:'created')
        self.created = attributes[:'created']
      end

      if attributes.has_key?(:'add_on')
        self.add_on = attributes[:'add_on']
      end

      if attributes.has_key?(:'amount_incl_vat')
        self.amount_incl_vat = attributes[:'amount_incl_vat']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @handle.nil?
        invalid_properties.push("invalid value for 'handle', handle cannot be nil.")
      end

      if !@quantity.nil? && @quantity < 1
        invalid_properties.push("invalid value for 'quantity', must be greater than or equal to 1.")
      end

      if @created.nil?
        invalid_properties.push("invalid value for 'created', created cannot be nil.")
      end

      if @add_on.nil?
        invalid_properties.push("invalid value for 'add_on', add_on cannot be nil.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @handle.nil?
      return false if !@quantity.nil? && @quantity < 1
      return false if @created.nil?
      return false if @add_on.nil?
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] quantity Value to be assigned
    def quantity=(quantity)

      if !quantity.nil? && quantity < 1
        fail ArgumentError, "invalid value for 'quantity', must be greater than or equal to 1."
      end

      @quantity = quantity
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          handle == o.handle &&
          quantity == o.quantity &&
          amount == o.amount &&
          created == o.created &&
          add_on == o.add_on &&
          amount_incl_vat == o.amount_incl_vat
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [handle, quantity, amount, created, add_on, amount_incl_vat].hash
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