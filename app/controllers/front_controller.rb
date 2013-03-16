class FrontController < SlashAdmin::Controller
  admin Foo
  
  index do
    header do
      span { 'Hello' }
      span { 'World' }
    end

    header { 'plain' }

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
