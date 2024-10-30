public class SalesCalculator {
    public Map<String,Integer> calculateTotalSales(List<SalesRecord> salesRecord) {
        Map<String,Integer> returnMap = new Map<String,Integer>();

        for(SalesRecord sale : salesRecord){
            Integer totalSales = sale.saleAmount;
            String salesPersonName = sale.salespersonName;

            if(returnMap.containsKey(salesPersonName)){
                totalSales = totalSales + returnMap.get(salesPersonName);
                returnMap.put(salesPersonName,totalSales);
            } else {
                returnMap.put(salesPersonName,totalSales);
            }

        }

        return returnMap;
    }
}