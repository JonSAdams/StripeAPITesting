public class CustomerTotal {
    public String customerId = '';
    public Decimal totalTransactionAmount = 0.0;

    public CustomerTotal(String customerId, Decimal totalTransactionAmount) {
        this.customerId = customerId;
        this.totalTransactionAmount = totalTransactionAmount;
    }
}