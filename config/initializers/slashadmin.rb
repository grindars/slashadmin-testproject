SlashAdmin::Engine.config.authentication_method = :authenticate_user!
SlashAdmin::Engine.config.current_user_method   = :current_user
SlashAdmin::Engine.config.restrict_model        = ->(model) { model.restrict(slashadmin_current_user) }
SlashAdmin::Engine.config.unrestrict_model      = ->(model) { model.insecure }
SlashAdmin::Engine.config.activeadmin_compat           = true

