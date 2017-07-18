package Controller;

import Email_Sender.Email_Sender;
import Entities.Register;
import Entities.authorities;
import Entities.users;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
public class Controler {

    // db configuration
    @Autowired(required = true)
    @Qualifier("registerService")
    Service.RegisterDaoService registerService;

    // db configuration
    @Autowired(required = true)
    @Qualifier("usersDaoService")
    Service.usersDaoService usersDaoService;


    // db configuration
    @Autowired(required = true)
    @Qualifier("authoritiesDaoService")
    Service.authoritiesDaoService authoritiesDaoService;

    // secure all pages appare after login
    @RequestMapping(value = "/",method = RequestMethod.GET)
    public ModelAndView Home()
    {
        ModelAndView modelAndView =new ModelAndView("Index");
        return modelAndView;
    }


    // First page for user login page
    @RequestMapping(value = "/Login",method = RequestMethod.GET)
public ModelAndView Login()
{

    ModelAndView modelAndView =new ModelAndView("Login");
    return modelAndView;
}

    // from login page travel to register page
    @RequestMapping(value = "/GoToRegist",method = RequestMethod.GET)
    public ModelAndView GoToRegist()
    {
        System.out.println("****************************************");
        ModelAndView modelAndView =new ModelAndView("Register");
        return modelAndView;
    }


//register form
    @RequestMapping(value = "/Register",method = RequestMethod.POST)
    public ModelAndView Register(@RequestParam("UName") String UName,@RequestParam("UEmail") String UEmail,@RequestParam("UPass") String UPass)
    {

        Email_Sender ES=new Email_Sender();
        Test T=new Test();
     String EncodedPass=  T.Md5Encoder(UPass);

        // insert in register table
        Register R=new Register();
        R.setUser_Email(UEmail);
        R.setUser_Name(UName);
        R.setUser_Pass(EncodedPass);
     String RegisterRes= registerService.Insert(R);

        // insert in users table
        users users=new users();
        users.setUsername(UName+"@Weather_Service");
        users.setPassword(EncodedPass);
        users.setEnabled(1);
        String usersRes =  usersDaoService.Insert(users);

        // insert in authentiction  table

        authorities au=new authorities();
        au.setUsername(UName+"@Weather_Service");
        au.setAuthority("ROLE_USER");
        String authoritiesRes= authoritiesDaoService.Insert(au);


        //check insertion
if(RegisterRes =="Doen" && usersRes=="Doen" && authoritiesRes=="Doen")
{
    //send him mail
    String Res =ES.SendMail(UEmail,UName,UName+"@Weather_Service",UPass);
}else{
    //insert again
}
        // send him login code
        String Res =ES.SendMail(UEmail,UName,UName+"@Weather_Service",UPass);
        if(RegisterRes =="Doen")
        {

        }else {
            ES.SendMail(UEmail,UName,UName+"@Weather_Service",UPass);
        }


        ModelAndView modelAndView =new ModelAndView("Login");
        return modelAndView;
    }


// logout from demo
    @RequestMapping(value = "/Logout",method = RequestMethod.GET)
    public ModelAndView Logout(HttpServletRequest request, HttpServletResponse response)
    {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();

        if(auth !=null)
        {
            new SecurityContextLogoutHandler().logout(request,response,auth);
        }

        System.out.println("-----------------------------");
        ModelAndView modelAndView =new ModelAndView("Login");
        return modelAndView;
    }


}

