package com.abhi.app.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.abhi.app.Dao.UserDao;
import com.abhi.app.model.User;

@Service

public class UserService {
	
@Autowired
private UserDao userDao;
public List<User> getAllUsersBasicInfo()
{
	List<Object[]> list= userDao.getAllUserBasicInfo();
	ArrayList<User> listUser=new ArrayList<User>();
	for(Object o[]:list)
		listUser.add(new User((Integer)o[0],(String)o[1],(Integer)o[2],(User.Sex)o[3],(User.Education)o[4],(User.MaritalStatus)o[5],(Integer)o[6]));
	return listUser;
}
public User getUserFullInfo(int id)
{
return userDao.getUserFullInfo(id);	
}
}
