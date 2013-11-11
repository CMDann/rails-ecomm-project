ActiveAdmin.register Product do
  index do
    column :name
    column :description
    column :category
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price, :unit => "&pound;"
      end
    end
    default_actions
  end
end
