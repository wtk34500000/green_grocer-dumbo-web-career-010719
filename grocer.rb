def consolidate_cart(cart)
  # code here
  hash={}
  cart.uniq.each do |k|
    k.each do|s, t|
    hash[s]=t
    count=0
    cart.each do |k2|
      if k == k2
      count+=1
      end
       end
     t[:count]=count
    end
  end
  hash
end

def apply_coupons(cart, coupons)
  # code here
  hash={}
  cart.each do |k, v|
    coupons.each do |s, t|
      if k == t && v[:count]>=coupons[:num]
      v[:count]=v[:count]-coupons[:num]
        hash["#{k} W/COUPONS"]={:price => coupons[:cost], 
                                :clearance => cart[k][:clearance],
                                :count =>v[:count]  }
      else
      hash[k]=v
      end
    end
  end
  hash
end

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
