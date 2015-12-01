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

	Vector3[] playerPositions = {new Vector3(8f, 15f, -16f), new Vector3(25f, 15f, -16f),
						  		 new Vector3(8f, 15f, -27f), new Vector3(25f, 15f, -27f)};
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
			// Santa(1), Cupid(2), Easter Bunny(3), Tooth Fairy(4)
			temp.classID = i + 1;
			if (i + 1 == 1) {
				temp.moveSpeed = 0.15f;
				temp.GetComponent<Renderer>().material.color = Color.red;
				temp.GetComponent<Rigidbody>().mass = .4f;
			}
			else if (i + 1 == 2) {
				temp.moveSpeed = 0.12f;
				temp.GetComponent<Renderer>().material.color = Color.blue;
				temp.GetComponent<Rigidbody>().mass = .28f;

			}
			else if (i + 1 == 3) {
				temp.moveSpeed = 0.15f;
				temp.GetComponent<Renderer>().material.color = Color.red;
				temp.GetComponent<Rigidbody>().mass = .3f;

			}
			else if (i + 1 == 4) {
				temp.moveSpeed = 0.12f;
				temp.GetComponent<Renderer>().material.color = Color.blue;
				temp.GetComponent<Rigidbody>().mass = .32f;

			}
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
		// temp: make it 2 player
		if (Input.GetKeyDown(KeyCode.Alpha9)) {
			for (int i = 2; i < 4; i++) {
				players[i].health.decreaseHealth(100f);
				Destroy(players[i].gameObject);

			}
		}

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
