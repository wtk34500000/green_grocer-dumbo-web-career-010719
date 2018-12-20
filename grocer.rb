require 'pry'
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

    coupons.each do |s|     
      if k == s[:item] && v[:count]>=s[:num]
      
         v[:count]=v[:count]-s[:num]

         hash["#{k} W/COUPON"]={:price => s[:cost], 
                                :clearance => v[:clearance],
                                :count => v[:cout]+1}
      end
    end
    hash[k]=v
  end
  hash
end	 	 	 	 	

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
