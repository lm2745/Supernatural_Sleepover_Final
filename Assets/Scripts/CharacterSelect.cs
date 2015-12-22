using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class CharacterSelect : MonoBehaviour
{
    public Button startButton;
	public static int[] controllerNumsForEachCharacter = new int[4] { 1, 2, 3, 4 }; //Default only used if characterselect scene is never used
    bool[] isControllerSet = new bool[4] { false, false, false, false };
    InputManager[] inputManagers = new InputManager[4];
    public Transform[] playerCursors;
    float cursorMinX = 144;
    float cursorMinY = 59;
    float cursorMaxX = 162;
    float cursorMaxY = 68;

    void Start()
    {
        GameManager.DecideOS();
        for(int managerNum = 0; managerNum < inputManagers.Length; managerNum++)
        {
            inputManagers[managerNum] = new InputManager(managerNum + 1, GameManager.os);
        }
        controllerNumsForEachCharacter = new int[4];
        startButton.interactable = false;
    }
    // Update is called once per frame
    void Update()
    {
        string textBuffer = "Choose Your Characters";
        

        for (int managerNum = 0; managerNum < inputManagers.Length; managerNum++)
        {
            float h = inputManagers[managerNum].getAxisX();
            float y = inputManagers[managerNum].getAxisY();
            Vector3 newPosition = playerCursors[managerNum].transform.position;
            newPosition = new Vector3(Mathf.Clamp(newPosition.x + h * Time.deltaTime * 15, cursorMinX, cursorMaxX),
                                        Mathf.Clamp(newPosition.y - y * Time.deltaTime * 15, cursorMinY, cursorMaxY),
                                        newPosition.z);
            playerCursors[managerNum].transform.position = newPosition;

            if (inputManagers[managerNum].getAction1Down())
            {
                Ray cursorRay = new Ray(playerCursors[managerNum].position, Vector3.forward);
                RaycastHit cursorRayHit = new RaycastHit();
                if (Physics.Raycast(cursorRay, out cursorRayHit, 100f))
                {
                    string hitTag = cursorRayHit.transform.tag;
                    if(hitTag == "Start")
                    {
                        if (isControllerSet[0] && isControllerSet[1] && isControllerSet[2] && isControllerSet[3])
                        {
                            Application.LoadLevel("differentArenaGameScene");
                        }

                    }

                    if(hitTag == "Controls")
                    {
                        Application.LoadLevel("HowToPlay");
                    }
                    if (!isControllerSet[managerNum])
                    {
                        if (hitTag == "Santa")
                        {
                            GameObject santa = cursorRayHit.transform.gameObject;
                            controllerNumsForEachCharacter[0] = managerNum + 1;
                            Debug.Log("Player is now Santa");
                            santa.tag = "SantaChosen";
                            santa.GetComponentInChildren<Light>().enabled = true;
                            santa.GetComponentInChildren<Light>().color = playerCursors[managerNum].GetComponent<Renderer>().material.color;
                            isControllerSet[managerNum] = true;
                        }
                        if (hitTag == "Easter Bunny")
                        {
                            GameObject easterBunny = cursorRayHit.transform.gameObject;
                            controllerNumsForEachCharacter[1] = managerNum + 1;
                            Debug.Log("Player is now Easter Bunny");
                            easterBunny.tag = "EasterBunnyChosen";
                            easterBunny.GetComponentInChildren<Light>().enabled = true;
                            easterBunny.GetComponentInChildren<Light>().color = playerCursors[managerNum].GetComponent<Renderer>().material.color;
                            isControllerSet[managerNum] = true;
                        }
                        if (hitTag == "Cupid")
                        {
                            GameObject cupid = cursorRayHit.transform.gameObject;
                            controllerNumsForEachCharacter[2] = managerNum + 1;
                            Debug.Log("Player is now Cupid");
                            cupid.tag = "CupidChosen";
                            cupid.GetComponentInChildren<Light>().enabled = true;
                            cupid.GetComponentInChildren<Light>().color = playerCursors[managerNum].GetComponent<Renderer>().material.color;
                            isControllerSet[managerNum] = true;
                        }

                        if (hitTag == "Tooth Fairy")
                        {
                            GameObject toothFairy = cursorRayHit.transform.gameObject;
                            controllerNumsForEachCharacter[3] = managerNum + 1;
                            Debug.Log("Player is now Tooth Fairy");
                            cursorRayHit.transform.gameObject.tag = "ToothFairyChosen";
                            toothFairy.GetComponentInChildren<Light>().enabled = true;
                            toothFairy.GetComponentInChildren<Light>().color = playerCursors[managerNum].GetComponent<Renderer>().material.color;
                            isControllerSet[managerNum] = true;
                        }
                    }
                }
            }
            else if(inputManagers[managerNum].getAction2Down())
            {
                if(isControllerSet[managerNum])
                {
                    for(int whichChar = 0; whichChar < controllerNumsForEachCharacter.Length; whichChar++)
                    {

                        if(controllerNumsForEachCharacter[whichChar] == managerNum + 1)
                        {
                            if (whichChar == 0)
                            {
                                GameObject santa = GameObject.FindWithTag("SantaChosen");
                                santa.tag = "Santa";
                                santa.GetComponentInChildren<Light>().enabled = false;
                            }
                            if (whichChar == 1)
                            {
                                GameObject easterBunny = GameObject.FindWithTag("EasterBunnyChosen");
                                easterBunny.tag = "Easter Bunny";
                                easterBunny.GetComponentInChildren<Light>().enabled = false;
                            }
                            if (whichChar == 2)
                            {
                                GameObject cupid = GameObject.FindWithTag("CupidChosen");
                                cupid.tag = "Cupid";
                                cupid.GetComponentInChildren<Light>().enabled = false;
                            }
                            if (whichChar == 3)
                            {
                                GameObject toothFairy = GameObject.FindWithTag("ToothFairyChosen");
                                toothFairy.tag = "Tooth Fairy";
                                toothFairy.GetComponentInChildren<Light>().enabled = false;
                            }
                            controllerNumsForEachCharacter[whichChar] = 0;
                            isControllerSet[managerNum] = false;
                        }
                    }
                }
            }
        }

        if(isControllerSet[0] && isControllerSet[1] && isControllerSet[2] && isControllerSet[3])
        {
            textBuffer = "Ready! Click Start!";
            startButton.interactable = true;
        }
        else
        {
            startButton.interactable = false;
        }
        GetComponent<Text>().text = textBuffer;
    }

		

		

}