module ExecPromotionsHelper

    def pending_requests(user)
        pending = ExecPromotion.where(user_id: user.id, resolved: false)

        if pending.empty?
            return false
        end

        return true
    end
end
