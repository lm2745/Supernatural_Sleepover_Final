using UnityEngine;
using System.Collections;
using UnityEngine.UI;
using System.Collections.Generic;

public class CharacterSelect : MonoBehaviour
{
	public static int[] controllerNumsForEachCharacter = new int[4];
	int whichController = 1;

	// Update is called once per frame
	void Update ()
	{
		Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit mouseRayHit = new RaycastHit();
	

		string textBuffer = "";
		textBuffer += "\nChoose character for Controller " + (whichController);

			if (Input.GetMouseButtonUp(0))
			{
				if (Physics.Raycast (mouseRay, out mouseRayHit, 100f))
					{
						string hitTag = mouseRayHit.transform.tag;

						if (hitTag == "Santa")
						{
							controllerNumsForEachCharacter[0] = whichController;
							Debug.Log ("Player is now Santa");
							mouseRayHit.transform.gameObject.tag = "SantaChosen";
							whichController++;
						}
						if (hitTag == "Easter Bunny")
						{
							controllerNumsForEachCharacter[1] = whichController;
							Debug.Log ("Player is now Easter Bunny");
							mouseRayHit.transform.gameObject.tag = "EasterBunnyChosen";
							whichController++;
						}
						if (hitTag == "Cupid")
						{
							controllerNumsForEachCharacter[2] = whichController;
							Debug.Log ("Player is now Cupid");
							mouseRayHit.transform.gameObject.tag = "CupidChosen";
							whichController++;
						}
						
						if (hitTag == "Tooth Fairy")
						{
							controllerNumsForEachCharacter[3] = whichController;
							Debug.Log ("Player is now Tooth Fairy");
							mouseRayHit.transform.gameObject.tag = "ToothFairyChosen";
							whichController++;
						}
					}
				}

		if (whichController > 4)
		{
			textBuffer = "\nPress Start to Play";
		}

			GetComponent<Text>().text = textBuffer;
	}
}