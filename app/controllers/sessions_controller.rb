class SessionsController < Devise::SessionsController
  def create
    super do |user|
      user.update(status: 'active') if user.persisted?
    end
  end

  def destroy
    user = current_user
    super do
      user.update(status: 'inactive') if user.present?
    end
  end
end
