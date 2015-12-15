using UnityEngine;
using System.Collections;

public enum OS { WINDOWS, LINUX, OSX };

public class GameManager : MonoBehaviour {

	// test
	public Player p1;
	public Player p2;
	// test end

	public static bool winningTeam = true;

	public Player santaFab, toothFab, cupidFab, bunnyFab;

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
			Player temp = null;
			if(i == 0){temp = (Player) Instantiate (santaFab, playerPositions[i], Quaternion.identity);}
			else if(i == 1){temp = (Player) Instantiate (cupidFab, playerPositions[i], Quaternion.identity);}
			else if(i == 2){temp = (Player) Instantiate (bunnyFab, playerPositions[i], Quaternion.identity);}
			else if(i == 3){temp = (Player) Instantiate (toothFab, playerPositions[i], Quaternion.identity);}

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
				temp.GetComponent<Rigidbody>().mass = .45f;
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
		if (Input.GetKeyDown(KeyCode.Alpha1)) {
				players[0].health.decreaseHealth(100f);
				Destroy(players[0].gameObject);
		}
		if (Input.GetKeyDown(KeyCode.Alpha2)) {
				players[1].health.decreaseHealth(100f);
				Destroy(players[1].gameObject);
				

		}
		if (Input.GetKeyDown(KeyCode.Alpha3)) {
				players[2].health.decreaseHealth(100f);
				Destroy(players[2].gameObject);
				
			
		}
		if (Input.GetKeyDown(KeyCode.Alpha4)) {
				players[3].health.decreaseHealth(100f);
				Destroy(players[3].gameObject);
				
			
		}

		CheckIfTeamDead();

	}

    void CheckIfTeamDead()
    {

        if(players[0].health.curHealth <= 0 && players[2].health.curHealth <= 0)
        {
            //Team 1 is dead
			//End scene triggered
			winningTeam = false;
			Application.LoadLevel ("endScene");
        }

       else if (players[1].health.curHealth <= 0 && players[3].health.curHealth <= 0)
       {
            //Team 2 is dead
			//End scene triggered
			winningTeam = true;
			Application.LoadLevel ("endScene");
       }
    }


}
