package springmvc.homecontroller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

@Controller
public class HomeController {
    @RequestMapping("/home")
    public String home(Model model){
        model.addAttribute("name","ravi kumar sihag");
        model.addAttribute("id",153007);
        String[] friends={"ravi","rohit","abdul","shalu"};
        model.addAttribute("f",friends);
        return "index";
    }
    @RequestMapping("/about")
    public String about(){

        System.out.println("this is about method");
        return "about";
    }
    @RequestMapping("/help")
    public ModelAndView help(){

        ModelAndView modelAndView=new ModelAndView();
        modelAndView.addObject("contact",1234567890);
        modelAndView.setViewName("help");
        LocalDateTime now= LocalDateTime.now();
        modelAndView.addObject("time",now);
        List<Integer> marks=new ArrayList<Integer>();
        marks.add(94);
        marks.add(95);
        marks.add(55);
        marks.add(65);
        marks.add(49);
        modelAndView.addObject("marks",marks);




        return modelAndView;

    }
}
