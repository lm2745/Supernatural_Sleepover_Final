using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Restart : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update ()
	{

		string textBuffer = "";
		
		if (GameManager.winningTeam == false)
		{
			textBuffer += "\nTeam Two (Easter Bunny and Tooth Fairy) Wins!";
		}
		else
		{
			textBuffer += "\nTeam One (Santa and Cupid) Wins!";
		}

		if (Input.GetKeyDown (KeyCode.R))
		{
			//Application.LoadLevel("gameUI"); // Application.LoadLevel("myGameScene");
			Application.LoadLevel ("differentArenaGameScene");
		}

		GetComponent<Text>().text = textBuffer;
	}
}
