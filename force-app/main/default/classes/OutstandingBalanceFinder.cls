public class OutstandingBalanceFinder {
    public List<CustomerBalance> findCustomersWithOutstandingBalances(List<Transactions> transactions) {
        if(transactions.size() == 0 || transactions.isEmpty()){
            return new List<CustomerBalance>();
        }
        Map<String,Decimal> totalsByCustomer = new Map<String,Decimal>();
        for(Transactions trans : transactions){
            if(totalsByCustomer.containsKey(trans.customerId)){
                Decimal total = totalsByCustomer.get(trans.customerId) + trans.transactionAmount;
                totalsByCustomer.put(trans.customerId, total);
            }else{
                totalsByCustomer.put(trans.customerId, trans.transactionAmount);
            }
        }
        List<CustomerBalance> customers = new List<CustomerBalance>();
        for(String customerId : totalsByCustomer.keySet()){
            customers.add(new CustomerBalance(customerId,totalsByCustomer.get(customerId)));
        }
        return customers;
    }
}