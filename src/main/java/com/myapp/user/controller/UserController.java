package com.myapp.user.controller;

import com.myapp.user.entity.User;
import com.myapp.user.services.UserService;
import lombok.extern.log4j.Log4j2;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

@RestController
@RequestMapping("/user")
@Slf4j
public class UserController {
    @Autowired
    private UserService userService;

    @GetMapping("/{id}")
    public ResponseEntity<User> getUserById(@PathVariable Long id){
        return userService.getUserById(id);
    }

    @PostMapping
    public User createUser(@RequestBody User newUser){
        return userService.createNewUser(newUser);
    }

    @GetMapping
    public List findAll(){
        List test = new ArrayList();
        test.add("Hi");

        return test;
    }

    @DeleteMapping(path ={"/{id}"})
    public ResponseEntity<?> deleteUser(@PathVariable("id") Long id){
        return userService.deleteUserById(id);
    }

    @PutMapping(value="/{id}")
    public ResponseEntity<User> update(@PathVariable("id") Long id, @RequestBody User editUser){
        return userService.updateUserById(id,editUser);
    }
}
