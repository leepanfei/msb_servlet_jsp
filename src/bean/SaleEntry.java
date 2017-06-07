package bean;

public class SaleEntry {

	private String itemID = "unknown";
	
	private int numItems = 0;
	
	private double discount = 1.0;
	
	public void setItemID(String itemID) {
		this.itemID = itemID;
	}
	
	public void setNumItems(int numItems) {
		this.numItems = numItems;
	}
	
	public void setDiscount(double discount) {
		this.discount = discount;
	}
	
	public String getItemID () {
		return itemID;
	}
	
	public int getNumItems() {
		return numItems;
	}
	
	public double getDiscount() {
		return discount;
	}
	
	public double getItemCost() {
		double cost;
		if ("a123".equals(itemID)) {
			cost = 12.99 * getDiscount();
		} else {
			cost = -99;
		}
		
		return round2Pennies(cost);
	}
	
	private double round2Pennies(double cost) {
		return (Math.floor(cost * 100) / 100.0);
	}
	
	public double getTotalCost() {
		return (getItemCost() * getNumItems());
	}
}
