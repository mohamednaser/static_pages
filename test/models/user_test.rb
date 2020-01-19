require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  def setup 
    @user = User.new(name: 'mohamed naser ' , email: 'naser@test.com' , password: "foobar", password_confirmation: "foobar")
  end 
  test "should be valid " do 
    
    
    assert @user.valid?
  end     
  
  test 'check empty name ' do
    @user.name = "asd"
    assert @user.valid?
  end
  
  test 'check name length ' do 
    @user.name = 'asd' * 3
    
    assert @user.valid?
  end
  
  test 'check valid mails ' do 
    
    valid_mails = %w[mohamed@naser.com naser@com.here]
    
    valid_mails.each{|mail|
      @user.email = mail
      
      assert @user.valid?
    }
    
  end 
  
  test 'check validate invalid mails ' do 
    invalid_mails = %w[asdf asccdv@asd asdfe notvalidmail]
    
    invalid_mails.each{|mail|
      @user.email = mail
      
      assert_not @user.valid? , "#{mail.inspect}mail should be correct "
      
    }
    
  end
  
  test ' check duplicate mail ' do
    duplicate_user = @user.dup 
    
    @user.save
    
    assert duplicate_user.valid? , 'mail should be unique '
    
    
  end
end
