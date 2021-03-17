module ListingsHelper
    def render_stripe_button(current_user)
        if current_user
            button = "<button data-stripe=\"payment\" class='btn btn-primary p-3'> Book: $<%=@listing.price%></button>"
        else
            button ="<button class='btn btn-primary' disabled> Login To Book</button>"
        end
        return button.html_safe
    end    
end
