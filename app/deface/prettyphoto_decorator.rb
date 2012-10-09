Deface::Override.new(:virtual_path => "spree/products/show", 
                     :name => "prettyphoto", 
                     :replace => "#product-images", 
                     :partial => "spree/products/image_replace_file")