class Sellers::Dashboard::SellerSkillsController < Sellers::DashboardController

  def index
    @seller_skills = SellerSkill.where(seller_id: @seller.id).includes(:skills)
  end

    
end