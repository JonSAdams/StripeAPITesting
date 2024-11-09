public class HighValueCustomerFinder {
    public List<CustomerTotal> findHighValueCustomers(List<Transactions> transactions, Decimal threshold) {
        List<CustomerTotal> customerTotals = new List<CustomerTotal>();
        if(transactions == null || transactions.isEmpty()){
            return customerTotals;
        }
        Map<String, Decimal> customerTotalsByTransaction = new Map<String,Decimal>();

       for(Transactions t : transactions) {
           if(customerTotalsByTransaction.containsKey(t.customerId)) {
                Decimal currentTransactionTotal = customerTotalsByTransaction.get(t.customerId) + t.transactionAmount;
                customerTotalsByTransaction.put(t.customerId, currentTransactionTotal);
           } else {
            customerTotalsByTransaction.put(t.customerId, t.transactionAmount);
           }
        }

        
        for(String t : customerTotalsByTransaction.keySet()) {
            if(customerTotalsByTransaction.get(t) > threshold) {
                customerTotals.add(new CustomerTotal(t, customerTotalsByTransaction.get(t)));
            }
        }
        return customerTotals;
    
    }

}