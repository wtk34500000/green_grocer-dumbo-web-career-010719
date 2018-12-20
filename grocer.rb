def consolidate_cart(cart)
  # code here
  cart.uniq.each do |k|
    k.each do|s, t|
    count=0
    cart.each do |k2|
      if k2 == k
      count+=1
      end
       end
     t[:count]=count
    end
  end
end

def apply_coupons(cart, coupons)
  # code here
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
