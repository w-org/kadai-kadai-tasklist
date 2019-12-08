class User < ApplicationRecord
    before_save { self.email.downcase! }#保存前に{小文字への変換}を実行
    
    validates :name, presence: true, length: { maximum: 50}#名前 presence: true　カラ文字を許さない
    validates :email, presence: true, length: { maximum: 255 },
                      format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                      uniqueness: { case_sensitive: false } #uniqueness重複を許さない{大文字小文字を区別しない}
    has_secure_password
    has_many :tasks
end
