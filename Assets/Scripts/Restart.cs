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
			textBuffer += "\nRed Team Wins!";
			teamOneCount++;
		}
		else
		{
			textBuffer += "\nYellow Team Wins!";
			teamTwoCount++;
		}

		textBuffer += "\n";
		textBuffer += "\nRed Team Total: " + teamOneCount;
		textBuffer += "\nYellow Team Total: " + teamTwoCount;

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
		else if (Input.GetKeyDown (KeyCode.S))
		{
			teamOneCount = 0;
			teamTwoCount = 0;
			Application.LoadLevel ("CharacterSelectScreen");
		}
	}
}
