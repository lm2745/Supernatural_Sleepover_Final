using UnityEngine;
using System.Collections;

public class MoveWith360 : MonoBehaviour {

	// Use this for initialization
	void Start () 
	{
	
	}

	float range = 10;
	
	// Update is called once per frame
	void Update () 
	{
		float h = Input.GetAxis("360LeftX");
		float xpos = h * range;

		float y = Input.GetAxis ("360LeftY");
		float ypos = y * range;

		transform.position = new Vector3(xpos, -ypos, 0);
		Debug.Log ("XAxis: " + h + "  XPos: " + xpos + "   YAxis: " + y + "  YPos " + ypos);

	}
}
