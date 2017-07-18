package Controller;


import org.springframework.security.authentication.encoding.Md5PasswordEncoder;

public class Test {

    public String Md5Encoder(String Pass)
    {

        Md5PasswordEncoder encoder =new Md5PasswordEncoder();
        String PassWord= encoder.encodePassword(Pass,null);
        System.out.println(PassWord);
       return PassWord;

    }

    public static void main(String[] args) {

        Test f=new Test();
        f.Md5Encoder("123");
    }
}
