public class MonthlySalesReport {
    public Map<String,Decimal> generateReport(List<SalesRecord> saleRecords){
        Map<String,Decimal> totalSalesByMonth = new Map<String,Decimal>();

        for(SalesRecord sale : saleRecords){
            
            Integer year = sale.saleDate.year();
            Integer month = sale.saleDate.month();
            String monthStr = (month < 10) ? '0' + String.valueOf(month) : String.valueOf(month);
            String yearMonth =  year + '-' + monthStr;


            if(totalSalesByMonth.containsKey(yearMonth)){
                Decimal saleAmount = totalSalesByMonth.get(yearMonth);
                totalSalesByMonth.put(yearMonth,saleAmount + sale.saleAmount);
            } else {
                totalSalesByMonth.put(yearMonth, sale.saleAmount);
            }
        }
        return totalSalesByMonth;

    }
}


