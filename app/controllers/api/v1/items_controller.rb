class Api::V1::ItemsController < ApplicationController
    #! skipping just for testing purposes, please delete after
    skip_before_action :authorized

    def create
        if current_user.admin
            item_link = Item.create(item_params)
        end
    end

    private

    def item_params
        params.require(:item).permit(:quantity, :cart_id, :inventory_id)
    end
end
