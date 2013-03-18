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
    div do
      span { 'before' }
      t.attribute :id
      span { 'after' }
      t.attribute :created_at
      t.attribute :updated_at
    end
  end
end
