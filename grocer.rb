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

def apply_coupons(cart:[], coupons:[])
	   result = {}

   cart.each do |food, info|
     coupons.each do |coupon|
       if food == coupon[:item] && info[:count] >= coupon[:num]
         info[:count] =  info[:count] - coupon[:num]
         if result["#{food} W/COUPON"]
           result["#{food} W/COUPON"][:count] += 1
         else
           result["#{food} W/COUPON"] = {:price => coupon[:cost], :clearance => info[:clearance], :count => 1}
         end
       end
     end
     result[food] = info
   end
   result
 end	 	

def apply_clearance(cart)
  # code here
end

def checkout(cart, coupons)
  # code here
end
