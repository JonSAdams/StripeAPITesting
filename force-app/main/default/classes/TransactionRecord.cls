public class TransactionRecord {
    public String accountId = '';
    public Decimal amount = 0.0;
    public Date transactionDate = System.today();

    public TransactionRecord(String accountId,Decimal amount,Date transactionDate) {
        this.accountId = accountId;
        this.amount = amount;
        this.transactionDate = transactionDate;
    }
    
}