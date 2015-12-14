using UnityEngine;
using System.Collections;

public class NextLevelButton : MonoBehaviour
{

	public void levelnameNum(int index)
	{
		Application.LoadLevel(index);
	}
		
	public void levelnameString(string levelName)
	{
		Application.LoadLevel(levelName);
	}
}
