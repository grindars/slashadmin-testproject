class AdminFooController < SlashAdmin::Controller
  admin Foo
  menu :parent => "Bar"
  permit_params :title
  filter :title, :label => "Title"
  
  index do
    header! do
      column ""
      column "Id"
      column "Title"
      column "Updated at"
      column "Created at"
      column "Actions"
    end
    batch_select
    column :id
    column :title
    column :updated_at
    column :created_at
    default_actions
  end

  show do |t|
    attributes_table do
      row :id
      row :title
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    f.input :title
    f.controls do
      f.button :submit
    end
  end
end
