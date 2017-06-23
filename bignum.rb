p (10**10).class
p (10**100).class

require 'bigdecimal'
p (BigDecimal('0.8') - BigDecimal('0.2')).to_f

p 10.to_f
p 10.0.to_i
p "10".to_i

5.downto(1){ |x| p x }

