package org.kreognenberg.service;

import org.kreognenberg.model.User;

public interface IUserService {

    User register(User newUser);
    User logUser(String username, String password);
}
