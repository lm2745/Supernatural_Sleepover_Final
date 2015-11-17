using UnityEngine;
using System.Collections;

public class MeleeWeapon : MonoBehaviour {

	public float damage; //duh
	public float weaponSpeed; // how quickly the weapon moves
	public float knockBack; //knockback force

	// Use this for initialization
	void Start () {
	
	}
	
	// Update is called once per frame
	void Update () {
		transform.Translate (0, -weaponSpeed, 0);
	
	}

	void OnTriggerEnter(Collider other){
		if (other.tag == "Player") {
			other.GetComponent<Health>().health = other.GetComponent<Health>().health - damage;
			other.GetComponent<Rigidbody>().AddForce (other.transform.forward * -knockBack); // add backwards force against enemy player
		}
		if (other.tag == "Floor") {
			Destroy (this.gameObject);
		}
	}

	//For whoever is doing the player movement
	//Instantiate one of these everytime the player presses space or something
	//Instantiate this one just in front of the player (have a tiny gameobject floating in front of Santa's face handle it)
}
