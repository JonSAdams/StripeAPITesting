public class PurchaseRecord {
    public String customerId = '';
    public Decimal purchaseAmount = 0.0;

    public PurchaseRecord(String customerId, Decimal purchaseAmount) {
        this.customerId = customerId;
        this.purchaseAmount = purchaseAmount;
    }
}