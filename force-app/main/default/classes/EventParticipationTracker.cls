public class EventParticipationTracker {
    public Map<String,Integer> trackParticipation(List<EventRecord> events) {
        Map<String,Integer> eventParticipation = new Map<String,Integer>();

        for(EventRecord event : events){
            if(eventParticipation.containsKey(event.eventName)){
                Integer totalParticipation = eventParticipation.get(event.eventName) + event.numParticipants;
                eventParticipation.put(event.eventName,totalParticipation);
            } else {
                eventParticipation.put(event.eventName,event.numParticipants);
            }
        }
        return eventParticipation;
    }
}