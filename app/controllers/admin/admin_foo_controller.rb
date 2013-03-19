class AdminFooController < SlashAdmin::Controller
  admin Foo
  
  index do
    header! do
      column "Id"
      column "Updated at"
      column "Created at"
      column "Actions"
    end
    column :id
    column :updated_at
    column :created_at
    default_actions
  end

  show do |t|
    attributes_table do
      row :id do
        strong t.id
      end
      row :updated_at
      row :created_at
    end
  end

  form do |f|
    f.input :id
    strong "fuck"
    div(:style => "border: solid 1px black") do
      strong "some nesting"
      f.input :id
    end
    f.submit
  end
end
