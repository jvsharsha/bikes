package com.niit.bikesbackend.dao;

import java.util.List;

import org.hibernate.HibernateException;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.boot.SessionFactoryBuilder;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.EnableTransactionManagement;
import org.springframework.transaction.annotation.Transactional;

import com.niit.bikesbackend.model.UserDetails;

@Repository(value = "userDetailsDAO")
@EnableTransactionManagement
@Transactional

public class UserDetailsDAOImpl implements UserDetailsDAO {
	//private static final Query SessionFactory = null;
	@Autowired
	private SessionFactory sessionFactory;

	public UserDetailsDAOImpl(SessionFactory sessionFactory) {
		this.sessionFactory = sessionFactory;

	}
	
      public UserDetailsDAOImpl(){
	  System.out.println("in userDetails DAO");
    }
	
	
	
	@Transactional
	public boolean save(UserDetails userdetails) {
		try {
		Session s=sessionFactory.getCurrentSession();
				s.save(userdetails);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	@Transactional
	public boolean update(UserDetails userdetails) {
		try {
			sessionFactory.getCurrentSession().update(userdetails);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	@Transactional
	public boolean delete(UserDetails userdetails) {
		try {
			sessionFactory.getCurrentSession().delete(userdetails);
			return true;
		} catch (HibernateException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}

	}

	@Transactional
	public UserDetails get(String id) {

		String hql = "from UserDetails where id='" + id + "'";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		List<UserDetails> list = query.list();
		if (list == null)

			return null;
		else {
			return list.get(0);
		}
	}

	//@Transactional
	public UserDetails isValidUser(String name,String password)
	{
		Session s=sessionFactory.getCurrentSession();
		//Transaction tx=s.beginTransaction();
		
		//select * from UserDetails where id='101' and password='niit'
		String hql="from UserDetails where name = '" +name+"' and password='"+password+"'";
		System.out.println(hql);
		org.hibernate.Query query=s.createQuery(hql);
		
		List<UserDetails> list=query.list();
		//tx.commit();
		if (list == null)

			return null;
		else {
			return list.get(0);
		}
	}
	
	
	@Transactional
	public List<UserDetails> list() {
		String hql = "from UserDetails";
		Query query = sessionFactory.getCurrentSession().createQuery(hql);
		return query.list();

	}

}
