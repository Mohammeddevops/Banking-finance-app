package com.staragile.insurance.policy;

import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;

@Controller
public class MvcPolicyController {

	
	@Autowired
	PolicyService policySvc;
	
	@RequestMapping("hello")
	public String doSomething(){
		return "Hello World!!!";
	}
	
	
	@RequestMapping("/getallpolicy")
	public String getAllPolicies(HttpServletRequest req, HttpServletResponse res) {
		/*String name = req.getParameter("name");
		System.out.println(name);
		req.getSession().setAttribute("name", name);
		return "second.jsp";
		*/
		
		List<Policy> policyList = policySvc.getPolicies();
		req.getSession().setAttribute("policyList", policyList);
		
		return "policy.jsp";
	}
	
	
	@RequestMapping("/policy/{id}")
	public Optional<Policy> getPolicy(@PathVariable String id){
		System.out.println("Inside getPolicy");
		return policySvc.getPolicy(id);
	}
	
	@RequestMapping("/policy")
	public List<Policy> getPolicies(){
		return policySvc.getPolicies();
	}
	
	@RequestMapping(method=RequestMethod.POST, value="/policy")
	public String addPolicy(@RequestBody Policy policy) {
		policySvc.addPolicy(policy);
		return "Successfully added!!";
	}
	
	@RequestMapping(method=RequestMethod.PUT, value="/policy/{id}")
	public String updatePolicy(@RequestBody Policy policy, @PathVariable String id) {
		policySvc.updatePolicy(id, policy);
		return "Updated successfully";
	}
	
	@RequestMapping(method=RequestMethod.DELETE, value="/policy/{id}")
	public String deletePolicy(@PathVariable String id) {
		policySvc.deletePolicy(id);
		return "Updated successfully";
	}
	
	
}
