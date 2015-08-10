package com.spr.service;

import java.util.List;
import com.spr.model.Employee;

public interface EmployeeService {
	
	 Employee create(Employee employee);
	 Employee delete(int id);
	 List<Employee> findAll();
	 Employee update(Employee employee);
	 Employee findById(int id);

}
