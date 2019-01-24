package com.spr.service;

import com.spr.model.Employee;
import com.spr.repository.EmployeeRepository;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.annotation.Resource;
import java.util.List;

@Service
public class EmployeeServiceImpl implements EmployeeService {
	
	@Resource
	private EmployeeRepository employeeRepository;

	@Override
	@Transactional
	public Employee create(Employee employee) {
		Employee createdEmployee = employee;

		return employeeRepository.save(createdEmployee);
	}
	
	@Override
	@Transactional
	public Employee findById(int id) {
		return employeeRepository.findOne(id);
	}

	@Override
	@Transactional
	public Employee delete(int id) {
		Employee deletedEmployee = employeeRepository.findOne(id);
		employeeRepository.delete(deletedEmployee);

		return deletedEmployee;
	}

	@Override
	@Transactional
	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	@Override
	@Transactional
	public Employee update(Employee employee){
		Employee updatedEmployee = employeeRepository.findOne(employee.getId());

		updatedEmployee.setFirstName(employee.getFirstName());
		updatedEmployee.setLastName(employee.getLastName());
		updatedEmployee.setEmail(employee.getEmail());
		updatedEmployee.setPhone(employee.getPhone());

		return updatedEmployee;
	}
}
