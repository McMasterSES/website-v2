# Custom exec admin controller

class ExecPromotionsController < ApplicationController
    before_action :authenticate_user!
    before_action :authorized_president, only: [:index]

    def new
        @exec_promotion = ExecPromotion.new
    end

    def create
        @exec_promotion = ExecPromotion.new
        @exec_promotion['reason'] = exec_promotion_params['reason']
        @exec_promotion['user_id'] = current_user.id
        @exec_promotion.save

        redirect_to edit_user_registration_path, notice: "Successfully sent request"
    end

    def index
        @exec_promotions = ExecPromotion.all
    end

    private

    def authorized_president
        if current_user.is_president?
            return true
        end

        redirect_back fallback_location: root_path, notice: "Restricted action"
    end

    def exec_promotion_params
        params.require(:exec_promotion).permit(:reason)
    end
end
