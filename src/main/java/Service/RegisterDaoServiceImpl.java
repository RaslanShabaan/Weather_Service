package Service;

import Dao.RegisterDao;
import Entities.Register;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
public class RegisterDaoServiceImpl implements RegisterDaoService{

    RegisterDao register_dao;

    public RegisterDao getRegisterDao() {
        return register_dao;
    }
    public void setRegisterDao(RegisterDao register_dao) {
        this.register_dao =register_dao;
    }

    @Transactional
    public String Insert(Register register) {

        register_dao.Insert(register);
        return "Doen";
    }

    @Transactional
    public String Delete(String User_Email) {

        register_dao.Delete(User_Email);
        return "Doen";
    }

    @Transactional
    public String Update(Register register) {

        register_dao.Update(register);
        return "Doen";
    }

    @Transactional
    public Register Select(String User_Email) {

        return  register_dao.Select(User_Email);
    }


    @Transactional
    public List<Register> SelectAllUsers() {

        return     register_dao.SelectAllUsers();
    }

}
