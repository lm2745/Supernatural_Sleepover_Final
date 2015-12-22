using UnityEngine;
using System.Collections;


public class InputManager {

    int joystickNum; //determines which controller to get input from

    string leftX, leftY; //Strings for X and Y axis of left joystick and keyboard
                         //To be used in Input.GetAxis(String)

    OS os;

    KeyCode action1Keyboard, action1Joystick, 
        action2Keyboard, action2Joystick;

    bool isDualShock4 = false;

	public InputManager(int joystickNum, OS os)
    {
        this.joystickNum = joystickNum;
        this.os = os;

        //Set string to use with Input.GetAxis(String)
        leftX = "360LeftX" + joystickNum;
        leftY = "360LeftY" + joystickNum;

       
        if (Input.GetJoystickNames().Length >= joystickNum && Input.GetJoystickNames()[joystickNum-1] == "Wireless Controller")
        {
            isDualShock4 = true;
        }

        if(joystickNum == 1)
        {
            action1Keyboard = KeyCode.E;
            action2Keyboard = KeyCode.R;
            
            if(isDualShock4)
            {
                action1Joystick = KeyCode.Joystick1Button0;
                action2Joystick = KeyCode.Joystick1Button1;
            }
            else if(os == OS.WINDOWS || os == OS.LINUX) //If Windows or Linux
            {
                action1Joystick = KeyCode.Joystick1Button2;
                action2Joystick = KeyCode.Joystick1Button0;
            }
            else if (os == OS.OSX)// If Mac
            {
                action1Joystick = KeyCode.Joystick1Button18;
                action2Joystick = KeyCode.Joystick1Button16;
            }
        }
        else if (joystickNum == 2)
        {
            action1Keyboard = KeyCode.Space;
            action2Keyboard = KeyCode.RightAlt;
            if (isDualShock4)
            {
                action1Joystick = KeyCode.Joystick2Button0;
                action2Joystick = KeyCode.Joystick2Button1;
            }
            else if (os == OS.WINDOWS || os == OS.LINUX) //If Windows or Linux
            {
                action1Joystick = KeyCode.Joystick2Button2;
                action2Joystick = KeyCode.Joystick2Button0;
            }
            else if (os == OS.OSX)// If Mac
            {
                action1Joystick = KeyCode.Joystick2Button18;
                action2Joystick = KeyCode.Joystick2Button16;
            }
        }
        else if (joystickNum == 3)
        {
            action1Keyboard = KeyCode.O;
            action2Keyboard = KeyCode.P;
            if (isDualShock4)
            {
                action1Joystick = KeyCode.Joystick3Button0;
                action2Joystick = KeyCode.Joystick3Button1;
            }
            else if (os == OS.WINDOWS || os == OS.LINUX) //If Windows or Linux
            {
                action1Joystick = KeyCode.Joystick3Button2;
                action2Joystick = KeyCode.Joystick3Button0;
            }
            else if (os == OS.OSX)// If Mac
            {
                action1Joystick = KeyCode.Joystick3Button18;
                action2Joystick = KeyCode.Joystick3Button16;
            }
        }
        else if (joystickNum == 4)
        {
            action1Keyboard = KeyCode.M;
            action2Keyboard = KeyCode.LeftAlt;
            if (isDualShock4)
            {
                action1Joystick = KeyCode.Joystick4Button0;
                action2Joystick = KeyCode.Joystick4Button1;
            }
            else if (os == OS.WINDOWS || os == OS.LINUX) //If Windows or Linux
            {
                action1Joystick = KeyCode.Joystick4Button2;
                action2Joystick = KeyCode.Joystick4Button0;
            }
            else if (os == OS.OSX)// If Mac
            {
                action1Joystick = KeyCode.Joystick4Button18;
                action2Joystick = KeyCode.Joystick4Button16;
            }
        }


    }
    
    
    
    //Use inputManager.getAxisX() instead of Input.GetAxis(axisname)
    public float getAxisX()
    {
        return Input.GetAxis(leftX);
    }
    public float getAxisY()
    {
        return Input.GetAxis(leftY);
    }


    /*Use inputManager.getAction1Down()
                      .getAction1()
                      .getAction1Up
       instead of Input.GetKeyDown(keycode)
                  Input.GetKey(keycode)
                  Input.GetKeyUp(keycode)
    */               
    public bool getAction1Down()
    {
        return Input.GetKeyDown(action1Keyboard) || Input.GetKeyDown(action1Joystick);
    }
    public bool getAction2Down()
    {
        return Input.GetKeyDown(action2Keyboard) || Input.GetKeyDown(action2Joystick);
    }

    public bool getAction1()
    {
        return Input.GetKey(action1Keyboard) || Input.GetKey(action1Joystick);
    }
    public bool getAction2()
    {
        return Input.GetKey(action2Keyboard) || Input.GetKey(action2Joystick);
    }

    public bool getAction1Up()
    {
        return Input.GetKeyUp(action1Keyboard) || Input.GetKeyUp(action1Joystick);
    }
    public bool getAction2Up()
    {
        return Input.GetKeyUp(action2Keyboard) || Input.GetKeyUp(action2Joystick);
    }
    

}
