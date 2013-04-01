class AdminBarController < SlashAdmin::Controller
  admin Bar
  permit_params :foo_id, :title
  filter :title, :label => "Title"
end
