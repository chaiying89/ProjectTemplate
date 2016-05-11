package com.wxgzh.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.wxgzh.model.User;
import com.wxgzh.repository.UserRepository;

@Service
@Transactional(rollbackFor = Exception.class)
public class UserService {
	
	@Autowired
	private UserRepository repository;
	
	@Transactional(readOnly = true)
	public void login(User user) throws Exception {
		User u = repository.findByName(user.getUsername());
		if(u == null) throw new Exception();
		if(!user.getPassword().equals(u.getPassword())) {
			throw new Exception();
		}
	}
	
	@Transactional(readOnly = true)
	public User getByUsername(String username) {
		return repository.findByName(username);
	}
	
	public void register(User user) {
		repository.save(user);
	}

}
