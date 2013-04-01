class AdminFooController < SlashAdmin::Controller
  admin Foo
  permit_params :title
  filter :title, :label => "Title"
end
