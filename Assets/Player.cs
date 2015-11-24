using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    InputManager inputManager;//used to get input
    //inputManager.getAxisX(), getAxisY(),
    //             getAction1(), getAction1Down(), getAction1Up()
    //             getAction2(), getAction2Down(), getAction2Up()
    public int moveSpeed;
    public float health;
    void Start ()
    {
        moveSpeed = 5;
	}
	
	
	void Update () {
	
	}

    public void createManager(int joystickNum, int OS)
    {
        inputManager = new InputManager(joystickNum, OS);
    }

    public void move()
    {
        float h = inputManager.getAxisX();

        float y = inputManager.getAxisY();


        Vector3 direction = new Vector3(h, 0, -y);

        if (direction != Vector3.zero)
        {
            transform.rotation = Quaternion.LookRotation(direction, Vector3.up);
            transform.position += transform.forward * Vector3.Distance(Vector3.zero, direction) * moveSpeed;
        }
    }
}
