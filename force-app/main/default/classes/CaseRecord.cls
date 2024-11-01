public class CaseRecord {
    public String agentId = '';
    public Decimal resolutionTime = 0.0;
    public CaseRecord(String agentId, Decimal resolutionTime) {
        this.agentId = agentId;
        this.resolutionTime = resolutionTime;
    }
}