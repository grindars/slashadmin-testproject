class AdminFooController < SlashAdmin::Controller
  admin Foo
  menu :parent => "Bar"
  permit_params :title
  filter :title, :label => "Title"
end
