class MemberList < ApplicationRecord
    belongs_to :curr_member
    belongs_to :alumni
    belongs_to :administrator

end
