using UnityEngine;
using System.Collections;

public class MovementWith360 : MonoBehaviour {
	
	// Use this for initialization
	void Start () 
	{
		
	}
	
	float range = 10;
	float range2 = .2f;
	float range3 = 200;
	
	// Update is called once per frame
	void FixedUpdate () 
	{
		move ();
		jump();
	}


	void iceSkateMove()
	{
		float h = Input.GetAxis("360LeftX");
		
		float y = Input.GetAxis ("360LeftY");

		if(h < .2f && y < .2f)
		{
			h = 0;
			y = 0;
		}
		
		Vector3 direction = new Vector3(h, 0, -y);

		if(direction != Vector3.zero)
		{
			transform.rotation = Quaternion.LookRotation (direction, Vector3.up);
			GetComponent<Rigidbody>().AddForce (direction * range);
		}
	}

	void move()
	{
		float h = Input.GetAxis("360LeftX");
		
		float y = Input.GetAxis ("360LeftY");

		
		Vector3 direction = new Vector3(h, 0, -y);

		if(direction != Vector3.zero)
		{
			transform.rotation = Quaternion.LookRotation (direction, Vector3.up);
			transform.position += transform.forward * Vector3.Distance ( Vector3.zero, direction) * range2;
		}
	}

	void jump()
	{

		if(Input.GetKeyDown (KeyCode.JoystickButton0) || Input.GetKeyDown ( KeyCode.JoystickButton16))
		{
			GetComponent<Rigidbody>().AddForce (Vector3.up * range3);
		}
	}
}
