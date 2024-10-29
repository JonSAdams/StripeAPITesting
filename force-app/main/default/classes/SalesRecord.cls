public class SalesRecord {
    public Date saleDate;
    public Decimal saleAmount = 0;

    public SalesRecord(Date sDate, Decimal sAmount){
        saleDate = sDate;
        saleAmount = sAmount;
    }
}