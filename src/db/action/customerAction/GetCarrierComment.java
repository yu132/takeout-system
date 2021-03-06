package db.action.customerAction;

import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.struts2.interceptor.ServletRequestAware;

import com.opensymphony.xwork2.ActionSupport;

import db.entity.Customer;
import db.service.CustomerService;

public class GetCarrierComment extends ActionSupport implements ServletRequestAware{

	private static final long serialVersionUID = 1L;
	
	private HttpServletRequest request;

	private HttpSession session;
	
	@Resource
	private CustomerService customerService;
	
	private Long carrierId;
	
	@Override
	public String execute() throws Exception {
		Object account=session.getAttribute("CurrentUser");
		
		if(account==null) {
			request.setAttribute("Reason", "User not logged in");
			return "Error";
		}
		
		if(!(account instanceof Customer)) {
			request.setAttribute("Reason", "User type is incorrect");
			return "Error";
		}
		
		Customer customer=(Customer)account;
		
		Map<String,Object> result=customerService.getCarrierComment(customer, carrierId);
		
		String state=(String) result.get("Result");
		
		if(state.equals("Success")) {
			request.setAttribute("CommentList", result.get("List"));
		}else if(state.equals("Error")){
			request.setAttribute("Reason", result.get("Reason"));
		}
		
		return state;
	}

	public Long getCarrierId() {
		return carrierId;
	}

	public void setCarrierId(Long carrierId) {
		this.carrierId = carrierId;
	}

	@Override
	public void setServletRequest(HttpServletRequest request) {
		this.request=request;
		this.session = request.getSession();
	}
}
