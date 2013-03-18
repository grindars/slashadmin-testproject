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
end
