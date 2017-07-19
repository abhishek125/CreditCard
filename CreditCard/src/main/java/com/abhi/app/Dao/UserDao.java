package com.abhi.app.Dao;

import java.util.List;

import com.abhi.app.model.User;

public interface UserDao {
public List<Object[]>  getAllUserBasicInfo();
public User getUserFullInfo(int id);
}
