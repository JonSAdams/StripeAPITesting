public class TrainCapacityChecker {
    public Integer maxCapacity = 0;
    public List<TrainCarriage> carriages = new List<TrainCarriage>();

    public Integer findSeat(Integer maxCapacity, List<TrainCarriage> carriages) {
        Integer numPerCarriage = maxCapacity / carriages.size();
        for(TrainCarriage carriage : carriages) {
                if(carriage.passengerCount <= numPerCarriage / 2) {
                    return carriage.carriageIndex;
                }
        }
        return -1;
    }  
}