public class ShoppingListOptimizer {
    public List<String> optimizeShoppingList(Map<String, Integer> productQuantity) {
        List<String> returnList = new List<String>();
        
        // Handle null or empty input
        if (productQuantity == null || productQuantity.isEmpty()) {
            return returnList;
        }
        
        // Convert map entries to Item objects
        List<Item> itemsList = new List<Item>();
        for (String product : productQuantity.keySet()) {
            itemsList.add(new Item(product, productQuantity.get(product)));
        }
        
        // Sort items (will use our compareTo method)
        itemsList.sort();
        
        // Format the output strings
        for (Item item : itemsList) {
            returnList.add(item.name + ' (' + item.quantity + ')');
        }
        
        return returnList;
    }
}