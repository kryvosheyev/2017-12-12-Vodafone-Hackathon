roc.auc<-function(pred.prob,target)
{
  #require(ROCR)
  pred<-prediction(predictions=pred.prob,labels=target)
  perf<-performance(pred,measure="tpr",x.measure="fpr")
  plot(perf,main="ROC curve for subscribers outflow",col="red",lwd=3)
  abline(a=0,b=1,lwd=2,lty=2)
  perf.auc<-performance(pred,measure="auc")
  return(unlist(perf.auc@y.values))
}