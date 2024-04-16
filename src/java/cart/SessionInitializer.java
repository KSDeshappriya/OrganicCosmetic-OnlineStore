/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cart;

import javax.servlet.http.HttpSession;
import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author SIM ASHAD
 */
public class SessionInitializer implements HttpSessionListener{
    
    @Override
    public void sessionCreated(HttpSessionEvent se){
        HttpSession session = se.getSession();
        
        ShoppingCart cart = new ShoppingCart();
        
        session.setAttribute("cart", cart);
    }
    
    @Override
     public void sessionDestroyed(HttpSessionEvent se){
     
     }
}
