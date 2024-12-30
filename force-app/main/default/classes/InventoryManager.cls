public class RoomScheduler {
    public Map<String, Integer> findAvailableRooms(List<Map<String, Object>> roomsData) {
        Map<String, Integer> availableSlots = new Map<String, Integer>();
        
        // Process each room
        for(Map<String, Object> roomData : roomsData) {
            String roomName = (String)roomData.get('roomName');
            List<Object> bookingsObj = (List<Object>)roomData.get('bookings');
            
            // Default to 24 available slots (hourly slots in a day)
            Integer slots = 24;
            
            // Process bookings if they exist
            if(bookingsObj != null && !bookingsObj.isEmpty()) {
                Set<Integer> bookedHours = new Set<Integer>();
                
                for(Object bookingObj : bookingsObj) {
                    Map<String, Object> booking = (Map<String, Object>)bookingObj;
                    Time startTime = (Time)booking.get('startTime');
                    Time endTime = (Time)booking.get('endTime');
                    
                    // Calculate booked hours
                    Integer startHour = startTime.hour();
                    Integer endHour = endTime.hour();
                    
                    // Add all hours between start and end to booked set
                    for(Integer i = startHour; i < endHour; i++) {
                        bookedHours.add(i);
                    }
                }
                
                // Calculate available slots
                slots = 24 - bookedHours.size();
            }
            
            availableSlots.put(roomName, slots);
        }
        
        return availableSlots;
    }
}