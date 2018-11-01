=begin
#API

#REST API to manage Reepay resources

OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 2.3.1

=end

require 'date'

module Reepay
  # A page in a paginated charge search
  class ChargeSearch
    # Number of current page in paginated list
    attr_accessor :page

    # Page size in paginated list
    attr_accessor :size

    # Number of elements in current page
    attr_accessor :count

    # Optional search expression used
    attr_accessor :search

    # Optional sort expression used
    attr_accessor :sort

    # List of charges for current page
    attr_accessor :content

    # Total number of elements in paginated list
    attr_accessor :total_elements

    # Total number of pages in paginated list
    attr_accessor :total_pages


    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'page' => :'page',
        :'size' => :'size',
        :'count' => :'count',
        :'search' => :'search',
        :'sort' => :'sort',
        :'content' => :'content',
        :'total_elements' => :'total_elements',
        :'total_pages' => :'total_pages'
      }
    end

    # Attribute type mapping.
    def self.swagger_types
      {
        :'page' => :'Integer',
        :'size' => :'Integer',
        :'count' => :'Integer',
        :'search' => :'String',
        :'sort' => :'String',
        :'content' => :'Array<Charge>',
        :'total_elements' => :'Integer',
        :'total_pages' => :'Integer'
      }
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      return unless attributes.is_a?(Hash)

      # convert string to symbol for hash key
      attributes = attributes.each_with_object({}){|(k,v), h| h[k.to_sym] = v}

      if attributes.has_key?(:'page')
        self.page = attributes[:'page']
      end

      if attributes.has_key?(:'size')
        self.size = attributes[:'size']
      end

      if attributes.has_key?(:'count')
        self.count = attributes[:'count']
      end

      if attributes.has_key?(:'search')
        self.search = attributes[:'search']
      end

      if attributes.has_key?(:'sort')
        self.sort = attributes[:'sort']
      end

      if attributes.has_key?(:'content')
        if (value = attributes[:'content']).is_a?(Array)
          self.content = value
        end
      end

      if attributes.has_key?(:'total_elements')
        self.total_elements = attributes[:'total_elements']
      end

      if attributes.has_key?(:'total_pages')
        self.total_pages = attributes[:'total_pages']
      end

    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @page.nil?
        invalid_properties.push("invalid value for 'page', page cannot be nil.")
      end

      if @page < 1
        invalid_properties.push("invalid value for 'page', must be greater than or equal to 1.")
      end

      if @size.nil?
        invalid_properties.push("invalid value for 'size', size cannot be nil.")
      end

      if @size < 1
        invalid_properties.push("invalid value for 'size', must be greater than or equal to 1.")
      end

      if @count.nil?
        invalid_properties.push("invalid value for 'count', count cannot be nil.")
      end

      if @count < 0
        invalid_properties.push("invalid value for 'count', must be greater than or equal to 0.")
      end

      if @content.nil?
        invalid_properties.push("invalid value for 'content', content cannot be nil.")
      end

      if @total_elements.nil?
        invalid_properties.push("invalid value for 'total_elements', total_elements cannot be nil.")
      end

      if @total_elements < 0
        invalid_properties.push("invalid value for 'total_elements', must be greater than or equal to 0.")
      end

      if @total_pages.nil?
        invalid_properties.push("invalid value for 'total_pages', total_pages cannot be nil.")
      end

      if @total_pages < 0
        invalid_properties.push("invalid value for 'total_pages', must be greater than or equal to 0.")
      end

      return invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @page.nil?
      return false if @page < 1
      return false if @size.nil?
      return false if @size < 1
      return false if @count.nil?
      return false if @count < 0
      return false if @content.nil?
      return false if @total_elements.nil?
      return false if @total_elements < 0
      return false if @total_pages.nil?
      return false if @total_pages < 0
      return true
    end

    # Custom attribute writer method with validation
    # @param [Object] page Value to be assigned
    def page=(page)
      if page.nil?
        fail ArgumentError, "page cannot be nil"
      end

      if page < 1
        fail ArgumentError, "invalid value for 'page', must be greater than or equal to 1."
      end

      @page = page
    end

    # Custom attribute writer method with validation
    # @param [Object] size Value to be assigned
    def size=(size)
      if size.nil?
        fail ArgumentError, "size cannot be nil"
      end

      if size < 1
        fail ArgumentError, "invalid value for 'size', must be greater than or equal to 1."
      end

      @size = size
    end

    # Custom attribute writer method with validation
    # @param [Object] count Value to be assigned
    def count=(count)
      if count.nil?
        fail ArgumentError, "count cannot be nil"
      end

      if count < 0
        fail ArgumentError, "invalid value for 'count', must be greater than or equal to 0."
      end

      @count = count
    end

    # Custom attribute writer method with validation
    # @param [Object] total_elements Value to be assigned
    def total_elements=(total_elements)
      if total_elements.nil?
        fail ArgumentError, "total_elements cannot be nil"
      end

      if total_elements < 0
        fail ArgumentError, "invalid value for 'total_elements', must be greater than or equal to 0."
      end

      @total_elements = total_elements
    end

    # Custom attribute writer method with validation
    # @param [Object] total_pages Value to be assigned
    def total_pages=(total_pages)
      if total_pages.nil?
        fail ArgumentError, "total_pages cannot be nil"
      end

      if total_pages < 0
        fail ArgumentError, "invalid value for 'total_pages', must be greater than or equal to 0."
      end

      @total_pages = total_pages
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          page == o.page &&
          size == o.size &&
          count == o.count &&
          search == o.search &&
          sort == o.sort &&
          content == o.content &&
          total_elements == o.total_elements &&
          total_pages == o.total_pages
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Fixnum] Hash code
    def hash
      [page, size, count, search, sort, content, total_elements, total_pages].hash
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
