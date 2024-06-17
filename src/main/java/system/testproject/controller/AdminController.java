package system.testproject.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import system.testproject.entity.Admin;
import system.testproject.services.impl.AdminServicesImpl;

import java.util.List;

@RestController
@RequestMapping("/admin")
public class AdminController {
    @Autowired
    AdminServicesImpl adminService;

    @GetMapping
    public List<Admin> getAllAdmin(){
        return adminService.getAdmin();
    }

    @PostMapping
    public int addAdmin(@RequestBody Admin admin){
        return adminService.addAdmin(admin);
    }

    @PutMapping
    public int updateAdmin(@RequestBody Admin admin){
        return adminService.updateAdmin(admin);
    }

    @DeleteMapping
    public int deleteAdmin(@RequestParam String adminId){
        return adminService.deleteAdmin(adminId);
    }
}
