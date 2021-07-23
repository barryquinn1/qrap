library(vistime)
library(ggrepel)
library(ggdark)
library(stringr)

c("Harry Markowitz introduces Critical Line Algorithm",
  "NASDAQ launched as first electronic communications market",
  "Fischer Black proposes idea of fully electronic exchanges in a landmark paper",
  "Black-Scholes-Merton model for derivative pricing",
  "James Simons Founded Renaissance Technologies, introducing complex mathematical trading algorithms to markets",
  "Michael Bloomberg launches Innovative Market Systems (which become Bloomberg LLP)",
  "RenTec introduced Medallion Fund the most successful hedge fund in history",
  "Stochastic volatility modelling introduced",
  "Jump diffusion models introduced",
  "SEC order US stock exchanges to be decimalised",
  "Flash Crash (Markets drop 10% in a matter of minutes)",
  "Basel III - introduce rules to periodical estimate counterpart risk of complex derivatives",
  "Rebentrost et al. propose the use of quantum computing for derivative pricing",
  "RenTex's Medallion Fund average 66% annual return over last 30 years",
  "CME Smart Stream launched offering real-time cloud-based market data")->financeMs
  

c("Professor JohnMcCarthy (MIT) suggested computing will be sold as a utility",
  "IBM virtualised operating systems",
  "ARPANET launched by US Advanced Research Project Agency connect 4 university computer systems",
  "100,000 computers on Internet",
  "World Wide Web lanuched with 1 million computers on Net",
  "Compaq introduce the concept of 'Cloud Computing'",
  "Amazon (AWS) launch public Cloud",
  "OpenNebula research project launched and the begining of the Big Data era",
  "Amazon launch Elastic Computing Cloud (EC2)",
  "Dropbox launch Cloud storage",
  "Microsoft launch Azure cloud computing",
  "DigitalOcean Droplets launched",
  "Real-time streaming data on AWS",
  "Machine learning sold as a service in the Cloud",
  "Microsoft launches a massive data-ceter under the Altantic ocean",
  "Google Tensor Processing Units avaliable on the cloud, introducing tensor-based mathematical to public")->cloudMs            
content<-c(financeMs,cloudMs)            
start   = paste0(c("1952","1971","1972","1973","1982","1983","1988","1993","2000","2001","2010","2013","2017","2018","2019","2010",
                   "1961","1967","1969","1988","1991","1996","2002","2005","2006","2007","2012","2013","2015","2018","2019"),"-01-01")

i<-length(financeMs)
j=length(cloudMs)

timeline_data<-data.frame(
  event =str_wrap(content,width=15),
  start=start,
  end=start,
  group=c(rep("Finance",i),rep("Cloud computing",j)),
  fontcolor=c(rep("red",i),rep("blue",j)))

hc_vistime(timeline_data)
