class Member < ActiveRecord::Base
    has_many :memberships
    has_many :gyms, through: :memberships

    def latest_gym
        self.gyms.order(:start_year).reverse_order.first
    end

    def get_member_id
        find_by(member_id: self.memberships.member_id)
    end

    def remove_membership(gym)
        self.memberships.find_by(gym_id: gym.id)&.destroy
    end
end