package springmvc.homecontroller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import springmvc.Entity.User;
import springmvc.Service.UserService;
//localhost:8080/springmvc/registration
@Controller

public class ContactController {
    @Autowired
    UserService userService;
    @ModelAttribute
    public void commonDataForModel(Model m){
        m.addAttribute("heading","Welcome to Badminton Club");
        m.addAttribute("desc","activate your innerself");
    }
    @RequestMapping(path="/registration")
    public String form(Model m){
//    m.addAttribute("heading","Welcome to Badminton Club");
//    m.addAttribute("desc","activate your innerself");

     return "contact";
    }
    @RequestMapping(path="/processform", method=RequestMethod.POST)

    public String handleForm(@ModelAttribute User user,Model model){
        //getting data from view
        System.out.println(user);
        if(user.getUserName().trim().isEmpty()){
            System.out.println("redirecting to registration");
            return "redirect:/registration";
        }
        //passing our user to service
        userService.insertService(user);
        model.addAttribute("msg","user with username: '"+user.getUserName() +"' is created");

//        m.addAttribute("heading","Welcome to Badminton Club");
//        m.addAttribute("desc","activate your innerself");


        //processing



        //return to view
//        model.addAttribute("email",userEmail);
//        model.addAttribute("userName",userName);
//        model.addAttribute("password",password);

        return "success";
    }
    /*@RequestMapping(path="/processform", method=RequestMethod.POST)
    public String handleForm(@RequestParam(name="email" ) String userEmail,
                             @RequestParam(name="userName")String userName,
                             @RequestParam(name="userPassword")String password,
                             Model model){
        //getting data from view


        //processing
        User user=new User();
        user.setUserEmail(userEmail);
        user.setUserName(userName);
        user.setUserPassword(password);

        //return to view
//        model.addAttribute("email",userEmail);
//        model.addAttribute("userName",userName);
//        model.addAttribute("password",password);
        model.addAttribute("user",user);

        return "success";
    }*/

    /*@RequestMapping(path="/processform", method=RequestMethod.POST)
    public String handleForm(HttpServletRequest request){
        //getting data from view
        String email=(String)request.getParameter("email");
        String userName=(String)request.getParameter("userName");
        String userpassword=(String)request.getParameter("userpassword");

        //processing
        System.out.println(email);
        //return to view
    return "";
    }*/
}
