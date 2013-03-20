class AdminFooController < SlashAdmin::Controller
  admin Foo
  permit_params :title
  
  index do
    header! do
      column "Id"
      column "Title"
      column "Updated at"
      column "Created at"
      column "Actions"
    end
    column :id do |t|
      strong t.id
    end
    column :title
    column :updated_at
    column :created_at
    default_actions
  end

  show do |t|
    attributes_table do
      row :id do
        strong t.id
      end
      row :title
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    div(:style => "border: solid 1px black; padding: 4px;") do
      f.input :title
    end
    f.submit
  end
end
