package com.niit.model;

	import java.io.Serializable;
	import java.util.List;

	import javax.persistence.CascadeType;
	import javax.persistence.Entity;
	import javax.persistence.FetchType;
	import javax.persistence.GeneratedValue;
	import javax.persistence.Id;
	import javax.persistence.JoinColumn;
	import javax.persistence.OneToMany;
	import javax.persistence.OneToOne;

	import org.springframework.stereotype.Component;

	@Component
	@Entity
	public class Cart implements Serializable  {
		 private static final long serialVersionUID = 13L;

		    @Id
		    @GeneratedValue
		    private int cartId;

		    @OneToMany(mappedBy = "cart", cascade = CascadeType.ALL, fetch = FetchType.EAGER)
		    private List<CartItem> cartItems;

		    @OneToOne
		    @JoinColumn(name = "username")
		    
		    private User user;

		   

			private double grandTotal;

		    public int getCartId() {
		        return cartId;
		    }

		    public void setCartId(int cartId) {
		        this.cartId = cartId;
		    }

		    public List<CartItem> getCartItems() {
		        return cartItems;
		    }

		    public void setCartItems(List<CartItem> cartItems) {
		        this.cartItems = cartItems;
		    }

		    public double getGrandTotal() {
		        return grandTotal;
		    }

		    public void setGrandTotal(double grandTotal) {
		        this.grandTotal = grandTotal;
		    }
		    
		    public User getUser() {
				return user;
			}

			public void setUserDetails(User userDetails) {
				this.user = userDetails;
			}
		}





