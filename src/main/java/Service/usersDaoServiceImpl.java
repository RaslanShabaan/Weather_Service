package Service;

import Dao.RegisterDao;
import Dao.usersDao;
import Dao.usersDaoImpl;
import Entities.Register;
import Entities.users;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class usersDaoServiceImpl implements usersDaoService{

    private usersDao usersDao;

    public void setUsersDao(usersDao usersDao) {
        this.usersDao = usersDao;
    }
    public usersDao getUsersDao() {
        return usersDao;
    }


    @Transactional
    public String Insert(users users) {

        usersDao.Insert(users);
        return "Doen";
    }

    @Transactional
    public String Delete(String username) {

        usersDao.Delete(username);
        return "Doen";
    }

    @Transactional
    public String Update(users users) {

        usersDao.Update(users);
        return "Doen";
    }

    @Transactional
    public users Select(String username) {

        return   usersDao.Select(username);
    }


    @Transactional
    public List<users> SelectAllUsers() {

        return usersDao.SelectAllUsers();
    }

}
