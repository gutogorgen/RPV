/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package videoaula.git;

import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * 
 * @author Augusto
 */
public class TestFibonacci {
    
    @Test
   public void testFibonacci(){
        
      
       Fibonacc fc = new Fibonacc();
        
        assertEquals(0, fc.calculaFib(0));
    }
}