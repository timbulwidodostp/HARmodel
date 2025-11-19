# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Heterogeneous autoregressive (HAR) model for realized volatility model estimation Use HARmodel (highfrequency) With (In) R Software
install.packages("xts")
install.packages("highfrequency")
library("xts")
library("highfrequency")
HARmodel = read.csv("https://raw.githubusercontent.com/timbulwidodostp/HARmodel/main/HARmodel/HARmodel.csv",sep = ";")
# Estimation Heterogeneous autoregressive (HAR) model for realized volatility model estimation Use HARmodel (highfrequency) With (In) R Software
HARmodel_ <- as.Date(HARmodel$DT, origin = "02/01/2007")
HARmodel <- as.xts(HARmodel$RV5, order.by = HARmodel_)
HARmodel <- HARmodel(data = HARmodel, periods = c(1, 5, 22), type = "HAR")
class(HARmodel)
HARmodel
summary(HARmodel)
# Heterogeneous autoregressive (HAR) model for realized volatility model estimation Use HARmodel (highfrequency) With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished