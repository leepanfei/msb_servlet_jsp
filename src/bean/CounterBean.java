package bean;

import java.io.Serializable;

public class CounterBean implements Serializable {

	private static final long serialVersionUID = 1L;
	
	private int count = 0;
	
	public CounterBean() {
		
	}
	
	public int getCount() {
		count++;
		return count;
	}
	
	public void setCount(int count) {
		this.count = count;
	}
}