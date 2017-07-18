package Entities;

import javax.persistence.Entity;
import javax.persistence.Id;

@Entity
public class Register {


    @Id
    private String User_Email;
    private String User_Name;
    private String User_Pass;


    public Register() {
    }

    public Register(String User_Email) {

        this.User_Email =User_Email;
    }

    public Register(String USer_Email, String User_Name, String User_Pass) {
        this.User_Email=USer_Email;
        this.User_Name=User_Name;
        this.User_Pass=User_Pass;
    }


    public String getUser_Email() {
        return User_Email;
    }
    public void setUser_Email(String user_Email) {
        User_Email = user_Email;
    }

    public String getUser_Name() {
        return User_Name;
    }
    public void setUser_Name(String user_Name) {
        User_Name = user_Name;
    }

    public String getUser_Pass() {
        return User_Pass;
    }
    public void setUser_Pass(String user_Pass) {
        User_Pass = user_Pass;
    }


}
