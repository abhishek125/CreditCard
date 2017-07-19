package com.abhi.app.controller;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.NoResultException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.abhi.app.model.User;
import com.abhi.app.service.UserService;

@Controller
public class MyController {
@Autowired
private UserService userService;
@RequestMapping(value="/users",method=RequestMethod.GET,headers="Accept=application/json")
@ResponseBody
public ArrayList<User> showUsers()
{
	List<User> list=userService.getAllUsersBasicInfo();
	//model.addAttribute("users",list);
	return (ArrayList<User>)list;
}
@RequestMapping(value="/",method=RequestMethod.GET)
public String show()
{
	return "users";
}

@RequestMapping(value="/user/{userid}")
public String showUser(@PathVariable("userid") String userId,Model model)
{
	int id=Integer.parseInt(userId);
	User user=userService.getUserFullInfo(id);
	if(user==null)
		throw new NoResultException();
	model.addAttribute("user",user);
	return "profile";
}

}
