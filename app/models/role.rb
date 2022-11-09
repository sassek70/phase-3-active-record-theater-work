class Role < ActiveRecord::Base
    has_many :auditions

    def actors
        self.auditions.map do |role|
            role.actor
        end
    end

    def locations
        self.auditions.map do |role|
            role.location
        end
    end

    def lead
        self.auditions.first ? self.auditions.first : "no actor has been hired for this role"
    end

    def understudy
        self.auditions.second ? self.auditions.first : "no actor has been hired for this role"
    end
end
