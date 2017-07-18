package Service;


import Entities.Register;

import java.util.List;

public interface RegisterDaoService {


    public String Insert(Register register);
    public String Delete(String User_Email);
    public String Update(Register register);
    public Register  Select(String User_Email);
    public List<Register> SelectAllUsers();

}
