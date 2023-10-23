package springmvc.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import springmvc.Dao.UserDao;
import springmvc.Entity.User;
@Service
public class UserService {
    @Autowired
    UserDao userDao;


    public int insertService(User user){
        //passing our object to dao
        return userDao.insert(user);
    }
    public void updateService(User user){
        userDao.update(user);
    }

}
