public class Transactions {
    public String customerId = '';
    public Decimal transactionAmount = 0.0;

    public Transactions(String customerId, Decimal transactionAmount) {
        this.customerId = customerId;
        this.transactionAmount = transactionAmount;

    }
}