ActiveAdmin.register Product do
  index do
    column :name
    column :description
    column :category
    column :price, :sortable => :price do |product|
      div :class => "price" do
        number_to_currency product.price, :unit => "&dollar;"
      end
    end
    default_actions
  end

  form do |f|                         
    f.inputs "Details" do       
      f.input :name                  
      f.input :description               
      f.input :category
      f.input :price
      f.input :stock_quantity
      f.input :image, :as => :file, :hint => f.template.image_tag(f.object.image.url(:medium))
    end                               
    f.actions                         
  end 
end
