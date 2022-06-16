package com.action;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import org.apache.struts.action.*;

/**
 * Action que registra al usuario en el sistema
 * @author Carlos García. Autentia.
 * @see http://www.mobiletest.es
 */


/**
 * 
 * */

//Más info: https://www.adictosaltrabajo.com/2009/01/14/struts-appdemo/
public class RegistroAction extends Action {
	
	public ActionForward execute(ActionMapping mapping, ActionForm form, HttpServletRequest request, HttpServletResponse response) throws Exception {
		DynaActionForm registerForm = (DynaActionForm) form;
		
		// Extraemos los datos del formulario 
		String  login = (String) registerForm.get("login");
		String  email = (String) registerForm.get("email");
		Byte	edad  = (Byte)   registerForm.get("age");
		
		//////////////////////////////////////////////////////////////////////////////////////
		// Realizariamos las acciones en los objetos de negocio (En este caso, nada)
		//////////////////////////////////////////////////////////////////////////////////////
		
		// Configurariamos los objetos Request, Session, etc. que necesita la siguiente vista a mostrar
		com.entity.User user = new com.entity.User();
		user.setLogin(login);
		user.setEmail(email);
		user.setAge(edad.byteValue());
		
		request.setAttribute("registerUser", user);
		
		// Mostramos la siguiente vista
		return mapping.findForward("ok"); 
	}
}