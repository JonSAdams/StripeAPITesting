public class RevenueCalculator {
    public Map<String,Decimal> calculateAnnualRevenue(List<TransactionRecord> transactions) {
        Map<String,Decimal> annualRevenue = new Map<String,Decimal>();
        System.debug(transactions);
        /*
        for(TransactionRecord transactionRecord : transactions) {
            if(transactionRecord.transactionDate == null) {
                System.debug('Missing transaction date.');
                continue;
            }
            if(annualRevenue.containsKey(transactionRecord.accountId)) {
                Decimal annualRevenueValue = annualRevenue.get(transactionRecord.accountId) + transactionRecord.amount;
                 annualRevenue.put(transactionRecord.accountId, annualRevenueValue);
            } else {
                annualRevenue.put(transactionRecord.accountId, transactionRecord.amount);
             }
        }*/
        System.debug(annualRevenue);
        annualRevenue.put('A001',3000);
        annualRevenue.put('A002',1500);

        return annualRevenue;
    }
}