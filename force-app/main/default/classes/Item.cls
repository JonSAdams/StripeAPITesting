public class Item implements Comparable {
    public String name { get; set; }
    public Integer quantity { get; set; }
    
    public Item(String name, Integer quantity) {
        this.name = name;
        this.quantity = quantity;
    }
    
    // Implement compareTo for descending order (higher quantities first)
    public Integer compareTo(Object compareTo) {
        Item compareToItem = (Item)compareTo;
        
        // For descending order, we reverse the comparison
        if (this.quantity > compareToItem.quantity) {
            return -1;  // This item should come first
        } else if (this.quantity < compareToItem.quantity) {
            return 1;   // This item should come second
        }
        // If quantities are equal, sort alphabetically by name
        return this.name.compareTo(compareToItem.name);
    }
}