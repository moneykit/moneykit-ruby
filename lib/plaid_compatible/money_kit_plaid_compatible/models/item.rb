# #Plaid Compatibility Layer
#
# No description provided (generated by Openapi Generator https://github.com/openapitools/openapi-generator)
#
# The version of the OpenAPI document: 0.1.0
#
# Generated by: https://openapi-generator.tech
# OpenAPI Generator version: 5.1.1
#

require 'date'
require 'time'

module MoneyKit
  module PlaidCompatible
  # Metadata about the Item.
  class Item
    # The Plaid Item ID. The `item_id` is always unique; linking the same account at the same institution twice will result in two Items with different `item_id` values. Like all Plaid identifiers, the `item_id` is case-sensitive.
    attr_accessor :item_id

    # The Plaid Institution ID associated with the Item. Field is `null` for Items created via Same Day Micro-deposits.
    attr_accessor :institution_id

    # The URL registered to receive webhooks for the Item.
    attr_accessor :webhook

    attr_accessor :error

    # A list of products available for the Item that have not yet been accessed. The contents of this array will be mutually exclusive with `billed_products`.
    attr_accessor :available_products

    # A list of products that have been billed for the Item. The contents of this array will be mutually exclusive with `available_products`. Note - `billed_products` is populated in all environments but only requests in Production are billed. Also note that products that are billed on a pay-per-call basis rather than a pay-per-Item basis, such as `balance`, will not appear here.
    attr_accessor :billed_products

    # A list of authorized products for the Item.
    attr_accessor :products

    # Beta: A list of products that have gone through consent collection for the Item. Only present for those enabled in the beta.
    attr_accessor :consented_products

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        'item_id': :item_id,
        'institution_id': :institution_id,
        'webhook': :webhook,
        'error': :error,
        'available_products': :available_products,
        'billed_products': :billed_products,
        'products': :products,
        'consented_products': :consented_products
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        'item_id': :String,
        'institution_id': :String,
        'webhook': :String,
        'error': :PlaidError,
        'available_products': :'Array<Products>',
        'billed_products': :'Array<Products>',
        'products': :'Array<Products>',
        'consented_products': :'Array<Products>'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new(%i[
                institution_id
                webhook
                error
                products
                consented_products
              ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      unless attributes.is_a?(Hash)
        raise ArgumentError,
              'The input argument (attributes) must be a hash in `MoneyKit::PlaidCompatible::Item` initialize method'
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) do |(k, v), h|
        unless self.class.attribute_map.key?(k.to_sym)
          raise ArgumentError,
                "`#{k}` is not a valid attribute in `MoneyKit::PlaidCompatible::Item`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end

        h[k.to_sym] = v
      end

      self.item_id = attributes[:item_id] if attributes.key?(:item_id)

      self.institution_id = attributes[:institution_id] if attributes.key?(:institution_id)

      self.webhook = attributes[:webhook] if attributes.key?(:webhook)

      self.error = attributes[:error] if attributes.key?(:error)

      if attributes.key?(:available_products) && (value = attributes[:available_products]).is_a?(Array)
        self.available_products = value
      end

      if attributes.key?(:billed_products) && (value = attributes[:billed_products]).is_a?(Array)
        self.billed_products = value
      end

      if attributes.key?(:products) && (value = attributes[:products]).is_a?(Array)
        self.products = value
      end

      return unless attributes.key?(:consented_products)
      return unless (value = attributes[:consented_products]).is_a?(Array)

      self.consented_products = value
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = []
      invalid_properties.push('invalid value for "item_id", item_id cannot be nil.') if @item_id.nil?

      if @available_products.nil?
        invalid_properties.push('invalid value for "available_products", available_products cannot be nil.')
      end

      if @billed_products.nil?
        invalid_properties.push('invalid value for "billed_products", billed_products cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @item_id.nil?
      return false if @available_products.nil?
      return false if @billed_products.nil?

      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(other)
      return true if equal?(other)

      self.class == other.class &&
        item_id == other.item_id &&
        institution_id == other.institution_id &&
        webhook == other.webhook &&
        error == other.error &&
        available_products == other.available_products &&
        billed_products == other.billed_products &&
        products == other.products &&
        consented_products == other.consented_products
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(other)
      self == other
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [item_id, institution_id, webhook, error, available_products, billed_products, products, consented_products].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)

      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            send("#{key}=", attributes[self.class.attribute_map[key]].map do |v|
                              _deserialize(::Regexp.last_match(1), v)
                            end)
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
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
        # models (e.g. Pet) or oneOf
        klass = MoneyKit::PlaidCompatible.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
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
        value = send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

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
        value.compact.map { |v| _to_hash(v) }
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
end