require 'test_helper'

class ParamKeysConv::Test < ActiveSupport::TestCase
  test 'test_underscore_keys' do
    params1 = ActionController::Parameters.new(userInfo: { nickName: 'Francesco', roleType: 'admin' })
    params2 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    assert_equal params1.underscore_keys, params2
  end

  test 'test_underscore_keys!' do
    params1 = ActionController::Parameters.new(userInfo: { nickName: 'Francesco', roleType: 'admin' })
    params2 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    params1.underscore_keys!
    assert_equal params1, params2
  end

  test 'test_camelize_keys' do
    params1 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    params2 = ActionController::Parameters.new(UserInfo: { NickName: 'Francesco', RoleType: 'admin' })
    assert_equal params1.camelize_keys, params2
  end

  test 'test_camelize_keys_with_lower' do
    params1 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    params2 = ActionController::Parameters.new(userInfo: { nickName: 'Francesco', roleType: 'admin' })
    assert_equal params1.camelize_keys(:lower), params2
  end

  test 'test_camelize_keys!' do
    params1 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    params2 = ActionController::Parameters.new(UserInfo: { NickName: 'Francesco', RoleType: 'admin' })
    params1.camelize_keys!
    assert_equal params1, params2
  end

  test 'test_camelize_keys!_with_lower' do
    params1 = ActionController::Parameters.new(user_info: { nick_name: 'Francesco', role_type: 'admin' })
    params2 = ActionController::Parameters.new(userInfo: { nickName: 'Francesco', roleType: 'admin' })
    params1.camelize_keys!(:lower)
    assert_equal params1, params2
  end
end
