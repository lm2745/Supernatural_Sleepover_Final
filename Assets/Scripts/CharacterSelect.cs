using UnityEngine;
using System.Collections;

public class CharacterSelect : MonoBehaviour
{
	int player1 = 0;
	int player2 = 0;
	int player3 = 0;
	int player4 = 0;

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
		player1 = 1;
		PlayerPrefs.SetInt ("playerSelected", (player1));
	}

	void SelectedCharacter2()
	{
		Debug.Log ("Character 2 Selected");
		player2 = 2;
		PlayerPrefs.SetInt ("playerSelected", (player2));
	}

	void SelectedCharacter3()
	{
		Debug.Log ("Character 3 Selected");
		player1 = 3;
		PlayerPrefs.SetInt ("playerSelected", (player3));
	}

	void SelectedCharacter4()
	{
		Debug.Log ("Character 4 Selected");
		player1 = 4;
		PlayerPrefs.SetInt ("playerSelected", (player4));
	}

}
