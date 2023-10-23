package springmvc.Dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;
import springmvc.Entity.User;
@Repository
public class UserDao {
@Autowired
    HibernateTemplate hibernateTemplate;
@Transactional
    public int  insert(User user){
      return  (int)hibernateTemplate.save(user);
    }
    public void update(User user){
        hibernateTemplate.update(user);
    }
}
