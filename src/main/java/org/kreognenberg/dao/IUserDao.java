package org.kreognenberg.dao;

import org.kreognenberg.model.User;
import java.util.List;

public interface IUserDao {

    User findById (Integer id);
    List <User> findAll();
    void save(User user);
    void update(User user);
    void delete(Integer id);
}
