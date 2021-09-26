package com.skilldistillery.helpinghand.entities;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;

@Entity
public class Cart {

//	Field Mappings

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private int id;

	@ManyToOne
	@JoinColumn(name = "user_id")
	private User user;

	@Column(name = "create_date")
	private LocalDateTime createDate;

	private Boolean completed;
	
	@OneToMany(mappedBy="cart")
	private List<ShoppingCartItem> shoppingCartItems;

//	Getters and Setters

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}


	public LocalDateTime getCreateDate() {
		return createDate;
	}

	public void setCreateDate(LocalDateTime createDate) {
		this.createDate = createDate;
	}


//	No Arg Constructor

	public User getUser() {
		return user;
	}

	public void setUser(User user) {
		this.user = user;
	}

	public Boolean isCompleted() {
		return completed;
	}

	public void setCompleted(Boolean completed) {
		this.completed = completed;
	}
	
	public Boolean getCompleted() {
		return completed;
	}
	
	public List<ShoppingCartItem> getShoppingCartItems() {
		return shoppingCartItems;
	}

	public void setShoppingCartItems(List<ShoppingCartItem> shoppingCartItems) {
		this.shoppingCartItems = shoppingCartItems;
	}
	
	public void addShoppingCartItem(ShoppingCartItem item) {
		if(shoppingCartItems == null) {
			shoppingCartItems = new ArrayList<>();
		}
		if(!shoppingCartItems.contains(item)) {
			shoppingCartItems.add(item);
			item.setCart(this);
		}
	}
	public void deleteShoppingCartItem(ShoppingCartItem item) {
		if(shoppingCartItems!=null && shoppingCartItems.contains(item)) {
			shoppingCartItems.remove(item);
			item.setCart(null);
		}
	}

	public Cart() {
		super();
	}

// Constructor with all Fields

	public Cart(int id, int userId, LocalDateTime createDate, boolean completed) {
		super();
		this.id = id;
		this.createDate = createDate;
		this.completed = completed;
	}

// To String



// Hash Code and Equals 

	@Override
	public int hashCode() {
		return Objects.hash(id);
	}

	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		Cart other = (Cart) obj;
		return id == other.id;
	}

}
