﻿using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {

	public int team; // team that fired projectile
	//public Vector3 direction; // direction player facing when fired
	public float damage;
	public float projectileSpeed; // travel speed
	public float knockback;
	public float maxProjectileLife;
	public float projectileLife; // lifetime of projectile

	// Use this for initialization
	void Start () {
		projectileLife = 0f;
	}
	
	// Update is called once per frame
	void Update () {
		
	}

	void OnCollisionEnter(Collision collision) {
		if (collision.gameObject.tag == "Wall") {
			Destroy(this.gameObject);
		}
		/*
		if ( collision.gameObject.tag == "Player 1" || collision.gameObject.tag == "Player 2" ||
		     collision.gameObject.tag == "Player 3" || collision.gameObject.tag == "Player 4" ) {
			collision.gameObject.GetComponent<Player>().health.decreaseHealth(damage);
			collision.gameObject.GetComponent<Rigidbody>().AddForce((collision.gameObject.transform.position - transform.position).normalized * knockback);
		}
		Destroy (this.gameObject);
		*/
		//collision.gameObject.GetComponent<Player>().health.decreaseHealth(damage);
		//Destroy (this.gameObject);

		//if fired by team 1, ignore player 1, 3
		if (team == 1) {
			if (collision.gameObject.tag == "Player 1" || collision.gameObject.tag == "Player 3") {
				Physics.IgnoreCollision(collision.collider, GetComponent<Collider>());
				Destroy (this.gameObject);
			}
			else if (collision.gameObject.tag == "Player 2" || collision.gameObject.tag == "Player 4") {
				collision.gameObject.GetComponent<Player>().health.decreaseHealth(damage);
				collision.gameObject.GetComponent<Rigidbody>().AddForce((collision.gameObject.transform.position - transform.position).normalized * knockback);
				Destroy (this.gameObject);
			}
		}
		//if fired by team 2, ignore player 2, 4
		if (team == 2) {
			if (collision.gameObject.tag == "Player 2" || collision.gameObject.tag == "Player 4") {
				Physics.IgnoreCollision(collision.collider, GetComponent<Collider>());
				Destroy (this.gameObject);
			}
			else if (collision.gameObject.tag == "Player 1" || collision.gameObject.tag == "Player 3") {
				collision.gameObject.GetComponent<Player>().health.decreaseHealth(damage);
				collision.gameObject.GetComponent<Rigidbody>().AddForce((collision.gameObject.transform.position - transform.position).normalized * knockback);
				Destroy (this.gameObject);
			}
		}



		//if (collision.gameObject.tag == "Player") {
			//Player temp = (Player)collision.gameObject;
			//temp.health.decreaseHealth(damage);
			//temp.GetComponent<Rigidbody>().AddForce((temp.transform.position - transform.position).normalized * knockback);
			//Destroy(this);
		//}

	}

	void FixedUpdate() {
		if (projectileLife > maxProjectileLife) {
			Destroy(this.gameObject);

		}
		transform.position += transform.forward * projectileSpeed;
		projectileLife++;
	}
}