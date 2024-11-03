public class CustomerValueCalculator {
    public Map<String,Decimal> calculateLifetimeValue(List<PurchaseRecord> purchaseRecords) {
        Map<String,Decimal> customerLifetimeValue = new Map<String,Decimal>();
        for(PurchaseRecord purchaseRecord : purchaseRecords) {
            if(customerLifetimeValue.containsKey(purchaseRecord.customerId)) {
                Decimal total = customerLifetimeValue.get(purchaseRecord.customerId) + purchaseRecord.purchaseAmount;
                customerLifetimeValue.put(purchaseRecord.customerId,total);
                
            } else {

                customerLifetimeValue.put(purchaseRecord.customerId, purchaseRecord.purchaseAmount);
            }
        }
        return customerLifetimeValue;
    }
}