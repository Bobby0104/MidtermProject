package com.skilldistillery.helpinghand.data;

import com.skilldistillery.helpinghand.entities.User;

public interface UserDAO {
	
User findUserById(String username);

}
