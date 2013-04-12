SlashAdmin.configure do |c|
  c.authentication_method = :authenticate_user!
  c.current_user_method   = :current_user
  c.restrict_model        = ->(model) { model.restrict(slashadmin_current_user) }
  c.unrestrict_model      = ->(model) { model.insecure }
  c.compatibility         = :active_admin
end

