/**
 * 
 */
package tgg.web.home;

import javax.servlet.http.HttpServletRequest;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * @author John Lee
 * 
 */
@Controller
public class HomeTestController {

	@RequestMapping(value = "/index.htm", method = RequestMethod.GET)
	public String adminList(HttpServletRequest request, ModelMap map) {
		map.put("osgi", "OSGI");
		return "test.vm";
	}
}
