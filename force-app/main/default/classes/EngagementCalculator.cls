public class EngagementCalculator {
    public Map<String,Double> calculateEngagementScore(List<InteractionRecord> interactionRecords) {
        Map<String,Double>  contactWithTotal = new Map<String,Double>();

        for(InteractionRecord interation : interactionRecords) {
            if(contactWithTotal.containsKey(interation.contactId)) {
                Double total = contactWithTotal.get(interation.contactId);
                Double interactionCount = total + interation.interactionScore;
                contactWithTotal.put(interation.contactId,interactionCount);
            } else {
                contactWithTotal.put(interation.contactId,interation.interactionScore);
            }
        }
        return contactWithTotal;
    }
}