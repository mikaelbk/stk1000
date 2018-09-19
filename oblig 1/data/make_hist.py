from matplotlib.pyplot import *
from numpy import *
import scipy.integrate as integrate
infile = open("data.txt","r")
infile.readline()

x = []
hist_list = []
for line in infile.readlines():
	words = line.split(" ")
	hist_list.append(float(words[1]))
	x.append(int(eval(words[0])))

s = std(hist_list)
m = mean(hist_list)

def gaussian(x,s=s,m=m):
	return (1/(sqrt(2*pi)*s))*exp(-0.5*((x-m)/s)**2)

def integral(fra=0,til=100,func = gaussian):
	return integrate.quad(func,fra,til)[0]




if __name__ == '__main__':
	hist(hist_list,bins=linspace(0.5,1.2,8),histtype="bar", color='green')
	plot(linspace(min(hist_list),max(hist_list),1000),[gaussian(i,s,m)*17 for i in linspace(min(hist_list),max(hist_list),1000)],"r--",linewidth=2)
	xlabel('BMR [mL O$_2$/min]',fontsize=20)
	ylabel('Count',fontsize=20)

	tight_layout()
	savefig("data-hist.pdf")
	# show()