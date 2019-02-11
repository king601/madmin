module Madmin
  class Resources
    class UserResource
      include Madmin::Resourceable

      # editable_fields :email, :first_name, :last_name
      # showable_fields :id, :email, :first_name, :last_name

      field :id, Madmin::Field::Number, table: true
      field :email, Madmin::Field::Email, table: true, write: true, label: "Customer email"
      field :first_name, Madmin::Field::Text, table: true, write: true
      field :last_name, Madmin::Field::Text, table: true, write: true
    end
  end
end