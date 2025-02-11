class Gym < ActiveRecord::Base
    has_many :memberships
    has_many :members, through: :memberships

    def join_gym(member:, start_year:, start_month:)
        Membership.create(member: member, start_year: start_year, start_month: start_month, gym: self)
    end

    def print_all_memberships
        memberships.map do |membership|
           puts "Membership for #{membership.member.name} at #{self.name} Start Date: #{membership.start_month} #{membership.start_year}"
        end
    end

    def first_member
        self.members.order(:start_year).first
    end

    def gym_value
        (self.rating).to_f / self.price
    end

    def self.best_value
        all.map do |gym|
            gym.gym_value
        end.max
    end
end
