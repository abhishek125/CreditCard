package com.abhi.app.Dao;

import java.util.List;

import javax.persistence.NoResultException;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.abhi.app.model.User;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SessionFactory sessionFactory;
	public List<Object[]> getAllUserBasicInfo() {
		Session session=sessionFactory.openSession();
		@SuppressWarnings("unchecked")
		List<Object[]>  list=session.createQuery("SELECT u.id,u.name,u.limitbal,u.sex,u.education,u.maritalStatus,u.age FROM User u").getResultList();
		session.close();
		return list;
	}

	public User getUserFullInfo(int id) {
		Session session=sessionFactory.openSession();
		User user=null;
		try {
		user=(User)session.createQuery("FROM User u where u.id=:id").setParameter("id", id)
		.getSingleResult();
		}catch(NoResultException e) {
			e.getMessage();
		}
		finally {
		session.close();
		}
		return user;
	}

}
