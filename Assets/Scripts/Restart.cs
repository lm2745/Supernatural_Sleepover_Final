using UnityEngine;
using System.Collections;
using UnityEngine.UI;

public class Restart : MonoBehaviour {

	static int teamOneCount = 0;
	static int teamTwoCount = 0;

	// Use this for initialization
	void Start ()
	{

		string textBuffer = "";
		
		if (GameManager.winningTeam == true)
		{
<<<<<<< HEAD
			textBuffer += "\nTeam Two (Easter Bunny and Tooth Fairy) Wins!";
		}
		else
		{
			textBuffer += "\nTeam One (Santa and Cupid) Wins!";
=======
			teamOneCount += 1;
			textBuffer += "\nRed Team Wins!";
		}
		else
		{
			teamTwoCount += 1;
			textBuffer += "\nBlue Team Wins!";
>>>>>>> 123a350840d72e2235b0da9517c23d000616b50e
		}

		textBuffer += "\n";
		textBuffer += "\nRed Team Rounds Won: " + teamOneCount;
		textBuffer += "\nBlue Team Rounds Won: " + teamTwoCount;

		GetComponent<Text>().text = textBuffer;
	
	}
	
	// Update is called once per frame
	void Update ()
	{
		
		if (Input.GetKeyDown (KeyCode.R))
		{
			//Application.LoadLevel("gameUI"); // Application.LoadLevel("myGameScene");
			Application.LoadLevel ("differentArenaGameScene");
		}
		else if (Input.GetKeyDown (KeyCode.O))
		{
			teamOneCount = 0;
			teamTwoCount = 0;
			Application.LoadLevel ("differentArenaGameScene");
		}
	}
}
