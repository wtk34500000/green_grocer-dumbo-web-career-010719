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
  count=0
    coupons.each do |s|     
      if k == s[:item] && v[:count]>=s[:num]
         v[:count]=v[:count]-s[:num]
         hash["#{k} W/COUPON"]={:price => s[:cost], 
                                :clearance => v[:clearance],
                                :count => count+=1}
      end
    end
    hash[k]=v
  end
  hash
end	 	 	 	 	

def apply_clearance(cart)
  # code here
  cart.each do |k, v|
    if v[:clearance]==true
     v[:price] = (v[:price]*0.8).round(2)
    end
  end
end

def checkout(cart, coupons)
  # code here
  consolidate=consolidate_cart(cart)
  apply_coupons=apply_coupons(consolidate, coupons)
  apply_clearnce=apply_clearance(apply_coupons)
  total=0
  apply_clearnce.each do |k, v|
    total=total+v[:price]*v[:count]
  end
  if total > 100
      total =total*0.9
      return total.round(2)
    else
      return total.round(2)
    end
end
