Deface::Override.new(:virtual_path => "spree/layouts/spree_application", 
                     :name => "head_override", 
                     :insert_before => "div#content", 
                     :text => "<h1>Tak tohle jsem vlepil do stranky!</h1>")