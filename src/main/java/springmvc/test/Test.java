package springmvc.test;

import jakarta.servlet.http.HttpServletResponse;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.view.RedirectView;

@Controller
public class Test {
        @RequestMapping("/one")
    public /*RedirectView */ String one(){
        System.out.println("this is one ");
       /* RedirectView r= new RedirectView();
        r.setUrl("two");
        return r;*/
        return "redirect:/two";
    }
//    @RequestMapping("/one")
//    public  String one(HttpServletResponse response){
//        System.out.println("this is one ");
//       try {
//           response.sendRedirect("two");
//       }catch(Exception e){
//           e.printStackTrace();
//       }
//
//       return "";
//    }

    @RequestMapping("/two")
    public String two(){
        System.out.println("this is two");
        return "contact";
    }
}
