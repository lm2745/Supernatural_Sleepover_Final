using UnityEngine;
using System.Collections;

public class LoadLevel : MonoBehaviour {

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
	
	}

	public void NextLevelButton(string levelName)
	{
		Application.LoadLevel(levelName);
	}

	public void OnGUI()
	{
		if (GUI.Button(new Rect(10, 70, 50, 30), "Click"))
			Application.LoadLevel("level2");
	}
}
