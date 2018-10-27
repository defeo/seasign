
n = 70
lam1L = sqrt( n / (2*3.14159*2.718)) * 2.0^(256.0/(1.0*n))

c = 1.0128
b1length = (c^n)*lam1L

cost = 1.0
bound1 = b1length^2
print bound1, " ; ", cost

i = 2
while (i <= n):
  bistar = b1length^(1.0 - 0.0263*(i-1))
  bound1 = bound1 + bistar^2
  cost = cost*(lam1L / bistar)
  i = i + 1

npbb = sqrt( bound1)/2.0
print "near plane BKZ-20 bound ", npbb, " ; and infty norm ", npbb*sqrt(3.0/n)
print "Linder-Peikert search cost ", cost



