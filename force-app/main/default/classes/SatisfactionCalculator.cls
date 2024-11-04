public class SatisfactionCalculator {
    public Map<String, Decimal> calculateAverageSatisfaction(List<FeedbackRecord> feedbackRecords) {
        Map<String, Decimal> averageSatisfactionByProduct = new Map<String, Decimal>();

        Map<String, Integer> totalSatisfactionByProduct = new Map<String, Integer>();
        Map<String, Integer> countOfSatisfactionByProduct = new Map<String,Integer>();

        for(FeedbackRecord feedbackrec : feedbackRecords){
            if(totalSatisfactionByProduct.containsKey(feedbackrec.productId)){
                Integer totalSatisfaction = totalSatisfactionByProduct.get(feedbackrec.productId) + feedbackrec.rating;
                Integer countOfSatisfaction = countOfSatisfactionByProduct.get(feedbackrec.productId) + 1;
                
                totalSatisfactionByProduct.put(feedbackrec.productId, totalSatisfaction);
                countOfSatisfactionByProduct.put(feedbackrec.productId, countOfSatisfaction);
            } else {
                totalSatisfactionByProduct.put(feedbackrec.productId, feedbackrec.rating);
                countOfSatisfactionByProduct.put(feedbackrec.productId, 1);
            }
        }
        System.debug(totalSatisfactionByProduct);
        System.debug(countOfSatisfactionByProduct);
        
        for(String productId : totalSatisfactionByProduct.keySet()){
            Decimal avgSat = Decimal.valueOf(totalSatisfactionByProduct.get(productId))/Decimal.valueOf(countOfSatisfactionByProduct.get(productId));
            System.debug(avgSat);
            averageSatisfactionByProduct.put(productId, avgSat);
        }

        System.debug(averageSatisfactionByProduct);
        return averageSatisfactionByProduct;
    }
}