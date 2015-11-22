using UnityEngine;
using System.Collections;

public enum OS { WINDOWS, LINUX, OSX };

public class GameManager : MonoBehaviour {

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

        players = new Player[4];
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
        if(players[0].health <= 0 && players[1].health <= 0)
        {
            //Team 1 is dead
        }
        if (players[2].health <= 0 && players[3].health <= 0)
        {
            //Team 2 is dead
        }
    }
}
