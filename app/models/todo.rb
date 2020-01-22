class Todo < ApplicationRecord
    #空でないこと
    validates :title, presence: true
end
