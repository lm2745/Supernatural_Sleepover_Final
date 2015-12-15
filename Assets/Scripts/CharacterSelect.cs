using UnityEngine;
using System.Collections;

public class CharacterSelect : MonoBehaviour
{
	static Player[] players;
	Player temp = null;

	// Update is called once per frame
	void Update ()
	{
		Ray mouseRay = Camera.main.ScreenPointToRay (Input.mousePosition);
		RaycastHit mouseRayHit = new RaycastHit();

		if (Input.GetMouseButtonUp(0))
		{
			if (Physics.Raycast (mouseRay, out mouseRayHit, 100f))
			{
				if (mouseRayHit.collider.name == "Character1")
				{
					SelectedCharacter1();
				}
				if (mouseRayHit.collider.name == "Character2")
				{
					SelectedCharacter2();
				}
				if (mouseRayHit.collider.name == "Character3")
				{
					SelectedCharacter3();
				}
				if (mouseRayHit.collider.name == "Character4")
				{
					SelectedCharacter4();
				}
			}
		}
	}

	void SelectedCharacter1()
	{
		Debug.Log ("Character 1 Selected");
		temp.createManager = 1;
		Player[0] = temp;
		PlayerPrefs.SetInt ("playerSelected", (Player[0]));
	}

	void SelectedCharacter2()
	{
		Debug.Log ("Character 2 Selected");
		temp.createManager = 2;
		Player[1] = temp;
		PlayerPrefs.SetInt ("playerSelected", (Player[1]));
	}

	void SelectedCharacter3()
	{
		Debug.Log ("Character 3 Selected");
		temp.createManager = 3;
		Player[2] = temp;
		PlayerPrefs.SetInt ("playerSelected", (Player[2]));
	}

	void SelectedCharacter4()
	{
		Debug.Log ("Character 4 Selected");
		temp.createManager = 3;
		Player[3] = temp;
		PlayerPrefs.SetInt ("playerSelected", (Player[3]));
	}

}
