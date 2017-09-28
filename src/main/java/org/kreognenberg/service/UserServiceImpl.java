package org.kreognenberg.service;

import org.kreognenberg.model.User;
import org.springframework.stereotype.Service;

import java.util.HashMap;

@Service
public class UserServiceImpl implements IUserService {

    //the HashMap that store all users
    HashMap<String, User> userHashMap = new HashMap<String, User>();

    //to check if user already exists
    public User register(User newUser) {
        if (!userHashMap.containsKey(newUser.getName())) {
            userHashMap.put(newUser.getName(), newUser);
            return newUser;

        } else {
            return null;
        }
    }

    // to check whether user's password match or not
    public User logUser(String username, String password) {

        if (userHashMap.containsKey(username)) {
            User toto = userHashMap.get(username);

            if (password == toto.getPwd()) {
                return toto;
            }
        }
        return null;
    }
}
