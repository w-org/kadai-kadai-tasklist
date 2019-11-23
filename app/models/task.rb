class Task < ApplicationRecord
    varidates :content, presence: true, length: { maximum: 255 }
    varidates :status, presence: true, length: { maximum: 255 }
end
