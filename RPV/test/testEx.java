/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import java.io.FileReader;
import static org.junit.Assert.assertTrue;
import org.junit.After;
import org.junit.AfterClass;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Test;
import javax.script.Invocable;
import javax.script.ScriptEngine;
import javax.script.ScriptEngineManager;

/**
 *
 * @author unipampa
 */
public class testEx {

    static Invocable invocable;

    public testEx() {
    }

    @BeforeClass
    public static void setUpClass() {
    }

    @AfterClass
    public static void tearDownClass() {
    }

    @Before
    public void setUp() {
        ScriptEngineManager manager = new ScriptEngineManager();
        ScriptEngine engine = manager.getEngineByName("js");
        try {
            engine.eval(new FileReader("../js/script.js"));
        } catch (Exception e) {
            System.err.println("Não conseguiu carregar arquivo com funcoes javascript!");
            e.printStackTrace();
        }
        invocable = (Invocable) engine;
    }

    @After
    public void tearDown() {
    }

    /**
     *
     */
    @Test
    public void test01()  {

        boolean b;
        try {
            b = (Boolean) invocable.invokeFunction("PegaNome", new Object[]{});
        } catch (Exception ex) {
            b = false;
        }
        assertTrue(b);
    }
}