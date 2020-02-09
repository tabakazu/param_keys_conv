module ActionController
  class Parameters
    # Example:
    #   params = ActionController::Parameters.new(user: { nickName: "Francesco", age: 22, userRole: "admin" })
    #   params.underscore_keys # => <ActionController::Parameters {"user"=>{"nick_name"=>"Francesco", "age"=>22, "user_role"=>"admin"}} permitted: false>
    def underscore_keys
      self.class.new(@parameters.deep_transform_keys { |key| key.to_s.underscore })
    end

    def underscore_keys!
      @parameters.deep_transform_keys! { |key| key.to_s.underscore }
    end

    # Example:
    #   params = ActionController::Parameters.new(user: { nick_name: "Francesco", age: 22, user_role: "admin" })
    #   params.camelize_keys         # => <ActionController::Parameters {"User"=>{"NickName"=>"Francesco", "Age"=>22, "UserRole"=>"admin"}} permitted: false>
    #   params.camelize_keys(:lower) # => <ActionController::Parameters {"user"=>{"nickName"=>"Francesco", "age"=>22, "userRole"=>"admin"}} permitted: false>
    def camelize_keys(first_letter = :upper)
      self.class.new(@parameters.deep_transform_keys { |key| key.to_s.camelize(first_letter) })
    end

    def camelize_keys!(first_letter = :upper)
      @parameters.deep_transform_keys! { |key| key.to_s.camelize(first_letter) }
    end
  end
end
