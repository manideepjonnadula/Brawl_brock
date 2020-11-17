/**
 * 
 */
package tgg.web.admin;

import javax.servlet.http.HttpServletRequest;

import tgg.common.dal.dao.AdminMapper;
import tgg.common.dal.dataobject.Admin;
import tgg.common.dal.dataobject.AdminKey;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author John Lee
 * 
 */
@Controller
public class AdminTestController {

	@Autowired
	private AdminMapper adminMapperOsgi;

	@RequestMapping(value = {"/test.htm", "/index.htm"}, method = RequestMethod.GET)
	public String adminList(HttpServletRequest request, ModelMap map) {
		AdminKey key = new AdminKey();
		key.setId(1);
		Admin admin = adminMapperOsgi.selectByPrimaryKey(key);

		map.put("tester", admin.getName());
		return "test.vm";
	}
}
