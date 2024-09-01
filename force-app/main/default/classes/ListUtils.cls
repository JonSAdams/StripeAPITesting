public class ListUtils {
    public List<Object> removeListFromList(List<Object> sourceList,List<Object> listToRemove) {



        for(Object objectToRemove : listToRemove) {
            Integer indexOfObjectToRemove;
            for(Integer i = 0; i < sourceList.size(); i++) {
                if(sourceList[i] == objectToRemove) {
                    indexOfObjectToRemove = i;
                }
            }

            if(indexOfObjectToRemove != null) {
                sourceList.remove(indexOfObjectToRemove);
            }
        }

        return sourceList;
}
}