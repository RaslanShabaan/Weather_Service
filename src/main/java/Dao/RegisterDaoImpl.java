package Dao;


import Entities.Register;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class RegisterDaoImpl implements RegisterDao {


    SessionFactory sessionFactory;
    public SessionFactory getSessionFactory() {
        return sessionFactory;
    }
    public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }


    public String Insert(Register register) {

        sessionFactory.getCurrentSession().save(register);
    return "Doen";
    }

    public String Delete(String User_Email) {

        sessionFactory.getCurrentSession().delete(new Register(User_Email));
        return "Doen";
    }

    public String Update(Register register) {

        sessionFactory.getCurrentSession().update(register);
        return "Doen";
    }

    public Register Select(String User_Email) {
        return (Entities.Register)sessionFactory.getCurrentSession().get(Register.class,User_Email);
    }

    public List<Register> SelectAllUsers() {
        return sessionFactory.getCurrentSession().createCriteria(Register.class).list();
    }
}
