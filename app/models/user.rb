class User < ApplicationRecord
  has_secure_password
  validate :name, presence: true, length: {minimum: 5, maximum: 50}
  validate :email, presence: true, 'valid_email_2': true
  validate :age, presence: true, numericality: { only_integer: true, in: 16..100 }
end
