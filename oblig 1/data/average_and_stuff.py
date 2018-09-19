from make_hist import *

#should have used mean from numpy, but... 
print("Average = %.5f" % (sum(hist_list)/len(hist_list)))
print("Median = %.5f" % (sorted(hist_list)[int(len(hist_list)/2)]))
print((0.8-m)/s)

print(integral(0,0.6))
print(integral(1,100))
print(integral(0,100))