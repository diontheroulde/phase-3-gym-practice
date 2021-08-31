class Membership < ActiveRecord::Base
    belongs_to :member
    belongs_to :gym

    def print_membership
        puts "Membership for #{member.name} at #{gym.name} Start Date: #{self.start_month} #{self.start_year}"
    end
end
