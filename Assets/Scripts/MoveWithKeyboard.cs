using UnityEngine;
using System.Collections;

public class MoveWithKeyboard : MonoBehaviour {

	Rigidbody rbody;

	float range = 10;
	float range2 = .2f;
	float range3 = 200;

	void Start() {
		rbody = GetComponent<Rigidbody>();
	}

	void FixedUpdate() {
		move();
	}

	// Update is called once per frame
	void Update () {
	}

	void move() {
		float h = Input.GetAxis("Horizontal");
		
		float y = Input.GetAxis ("Vertical");
		
		
		Vector3 direction = new Vector3(h, 0, y);
		
		if(direction != Vector3.zero)
		{
			transform.rotation = Quaternion.LookRotation (direction, Vector3.up);
			transform.position += transform.forward * Vector3.Distance ( Vector3.zero, direction) * range2;
		}
	}
}
