public class InteractionRecord {
    public String contactId = '';
    public Decimal interactionScore = 0.0;

    public InteractionRecord(String contactId, Decimal interactionScore) {
        this.contactId = contactId;
        this.interactionScore = interactionScore;
    }
}