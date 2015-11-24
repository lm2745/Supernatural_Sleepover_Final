using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	private float maxHealth = 100f;
	public float curHealth = 100f;
	public GameObject healthBar;

	// Use this for initialization
	void Start ()
	{
		curHealth = maxHealth;
		InvokeRepeating ("decreaseHealth", 1f, 1f); // test health bar to see if it works
	}
	
	// Update is called once per frame
	void Update ()
	{
	}

	void decreaseHealth()
	{
		curHealth -= 5f; // testing purposes
		float calcHealth = curHealth / maxHealth;
		setHealthBar (calcHealth);
	}

	public void setHealthBar (float myHealth)
	{
		healthBar.transform.localScale = new Vector3(myHealth, healthBar.transform.localScale.y, healthBar.transform.localScale.z);
	}

}
