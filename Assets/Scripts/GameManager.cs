using UnityEngine;
using System.Collections;

public enum OS { WINDOWS, LINUX, OSX };

public class GameManager : MonoBehaviour {

	// test
	public Player p1;
	public Player p2;
	// test end

	public Player playerPrefab;

	public Health[] healthBars;

	Vector3[] playerPositions = {new Vector3(8f, 1f, -16f), new Vector3(25f, 1f, -16f),
						  		 new Vector3(8f, 1f, -27f), new Vector3(25f, 1f, -27f)};
	string[] playerTags = {"Player 1", "Player 2", "Player 3", "Player 4"};

    OS os;
    Player[] players;

    // Use this for initialization
    void Start ()
    {
	    if(Application.platform == RuntimePlatform.OSXDashboardPlayer
            || Application.platform == RuntimePlatform.OSXEditor
            || Application.platform == RuntimePlatform.OSXPlayer
            || Application.platform == RuntimePlatform.OSXWebPlayer)
        {
            os = OS.OSX;
        }
        else if (Application.platform == RuntimePlatform.LinuxPlayer)
        {
            os = OS.LINUX;
        }
        else if (Application.platform == RuntimePlatform.WindowsEditor
                || Application.platform == RuntimePlatform.WindowsPlayer
                || Application.platform == RuntimePlatform.WindowsWebPlayer)
        {
            os = OS.WINDOWS;
        }

		//Debug.Log ("1");
		//healthBars = new Health[4];
        players = new Player[4];
		for (int i = 0; i < 4; i++) {
			//Debug.Log ("2");
			Player temp = (Player) Instantiate (playerPrefab, playerPositions[i], Quaternion.identity);
			//Debug.Log ("3");
			//temp.classID = .....
			temp.createManager(i+1, os);
			temp.health = healthBars[i];
			temp.tag = playerTags[i];
			temp.classID = i + 1;
			temp.team = i % 2 + 1;
			players[i] = temp;
			//Debug.Log (i + "created");
		}
        //TO DO: Create players and put them in the array
        //Call create manager for each player and give it 1-4 for joystick num
                                            // and give it os for os
        //Player.move needs to be called for each player during some update function
                                        //(Either here or in player.cs)

	}
	
	// Update is called once per frame
	void Update ()
    {


	}

    void CheckIfTeamDead()
    {
        //if(players[0].health.curHealth <= 0 && players[1].health.curHealth <= 0)
        //{
            //Team 1 is dead
        //}
       // if (players[2].health <= 0 && players[3].health <= 0)
       // {
            //Team 2 is dead
       // }
    }
}
