/**
 * 
 */
package tgg.web.services;

import javax.jws.WebService;

import tgg.common.services.facade.HelloWorld;

/**
 * @author John Lee
 * 
 */
@WebService(endpointInterface = "tgg.common.services.facade.HelloWorld")
public class HelloWorldImpl implements HelloWorld {

	public String sayHi(String text) {
		System.out.println("sayHi called");
		return "Hello " + text;
	}
}