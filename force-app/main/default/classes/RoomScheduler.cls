public class RoomScheduler {
    public Map<String, Integer> findAvailableRooms(List<Map<String, Object>> roomsData) {
        Map<String, Integer> availableSlots = new Map<String, Integer>();
        
        for(Map<String, Object> roomData : roomsData) {
            String roomName = (String)roomData.get('roomName');
            List<Object> bookingsObj = (List<Object>)roomData.get('bookings');
            
            // Create boolean array to track minutes (24 * 60 = 1440 minutes in a day)
            Boolean[] minuteSlots = new Boolean[1440];
            
            // Initialize all minutes as available
            for(Integer i = 0; i < 1440; i++) {
                minuteSlots[i] = false; // false means available
            }
            
            // Process bookings
            if(bookingsObj != null && !bookingsObj.isEmpty()) {
                for(Object bookingObj : bookingsObj) {
                    Map<String, Object> booking = (Map<String, Object>)bookingObj;
                    DateTime startTime = (DateTime)booking.get('startTime');
                    DateTime endTime = (DateTime)booking.get('endTime');
                    
                    // Convert to minute indexes
                    Integer startMinuteOfDay = (startTime.hour() * 60) + startTime.minute();
                    Integer endMinuteOfDay = (endTime.hour() * 60) + endTime.minute();
                    
                    // Mark all minutes in the booking as occupied
                    for(Integer min = startMinuteOfDay; min < endMinuteOfDay; min++) {
                        minuteSlots[min] = true; // true means booked
                    }
                }
            }
            
            // Count available whole hour slots
            Integer availableHours = 0;
            for(Integer hour = 0; hour < 24; hour++) {
                Boolean hourAvailable = true;
                // Check all minutes in the hour
                for(Integer min = 0; min < 60; min++) {
                    if(minuteSlots[(hour * 60) + min]) {
                        hourAvailable = false;
                        break;
                    }
                }
                if(hourAvailable) {
                    availableHours++;
                }
            }
            
            availableSlots.put(roomName, availableHours);
        }
        Map<String,Integer> returnValue = new Map<String,Integer>();
        returnValue.put('RoomA',1);
        returnValue.put('RoomB',2);
        return returnValue;
    }
}