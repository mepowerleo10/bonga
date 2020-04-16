package com.bonga.web.user;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;

@Controller
public class UserController {
    @GetMapping("/sample")
    public String getSample() {
        return "sample";
    }

    @GetMapping("/login")
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Invalid username or password.");
        }

        if (logout != null) {
            model.addAttribute("message", "You have logged out successfully.");
        }

        return ("login");
    }

    @GetMapping("/home")
    public String home(Model model) {
        model.addAttribute("title", "Bonga");
        model.addAttribute("description", "<strong>A social network </strong>");
        return "home.html";
    }

    @GetMapping("/signup")
    public String getSignUp() {
        return "signup.html";
    }

    /*
     * @PostMapping("/signup") public String signUp(@RequestParam(name = "username")
     * String username,
     * 
     * @RequestParam(name = "email") String email,
     * 
     * @RequestParam(name = "password") String password,
     * 
     * @RequestParam(name = "password_conf") String passwordConf,
     * 
     * @RequestParam(name = "first_name") String firstName,
     * 
     * @RequestParam(name = "last_name") String lastName,
     * 
     * @RequestParam(name = "birth_date") String birthDate,
     * 
     * @RequestParam(name = "gender") String gender) {
     * 
     * System.out.printf(
     * "username: %s\n email: %s\n password: %s\n passwordConf: %s\n first_name: %s, last_name: %s\n birth_date: %s\n gender: %s"
     * , username, email, password, passwordConf, firstName, lastName, birthDate,
     * gender);
     * 
     * return "/"; }
     */


    @PostMapping("/signup")
    public ResponseEntity<String> signUp(@RequestBody User user) {
        System.out.printf(
                "username: %s\n email: %s\n password: %s\n passwordConf: %s\n first_name: %s, last_name: %s\n birth_date: %s\n gender: %s",
                user.getUsername(), user.getEmail(), user.getPassword(), user.getPasswordConfirm(),
                user.getFirstName(), user.getLastName(), user.getBirthDate(), user.getGender());
        return ResponseEntity.ok("User is valid");
    }

}
