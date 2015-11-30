﻿using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    InputManager inputManager;//used to get input
    //inputManager.getAxisX(), getAxisY(),
    //             getAction1(), getAction1Down(), getAction1Up()
    //             getAction2(), getAction2Down(), getAction2Up()
    public float moveSpeed;
    //public float health;
	public Health health;

	public int team;
	public int classID; // Santa(1), Cupid(2), Easter Bunny(3), Tooth Fairy(4)
	public Projectile projectilePrefab;

    void Start ()
    {
		//createManager(1, OS.WINDOWS);
        moveSpeed = 0.2f;
	}
	
	void FixedUpdate() {
		//if (inputManager != null) {
			move();
		//}
	}

	void Update () {
		if (inputManager.getAction1Down() ) {
			//if (tag == "Santa") {
			if (classID == 1) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 50f;
				temp.projectileSpeed = 0.3f;
				temp.maxProjectileLife = 5f;
				temp.knockback = 500f;
				temp.team = team;
				//health.decreaseHealth(50f);
			}
			//else if (tag == "Cupid") {
			else if (classID == 2) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 10f;
				temp.projectileSpeed = 0.15f;
				temp.maxProjectileLife = 50f;
				temp.knockback = 50f;
				temp.team = team;
				//health.decreaseHealth(10f);
			}
			//else if (tag == "Easter Bunny") {
			else if (classID == 3) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 30f;
				temp.projectileSpeed = 0.3f;
				temp.maxProjectileLife = 5f;
				temp.knockback = 200f;
				temp.team = team;
				//health.decreaseHealth(30f);
			}
			//else if (tag == "Tooth Fairy") {
			else if (classID == 4) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 5f;
				temp.projectileSpeed = 0.25f;
				temp.maxProjectileLife = 100f;
				temp.knockback = 10f;
				temp.team = team;
				//health.decreaseHealth(5f);
			}
		}

		//test setting player class
		if (Input.GetKeyDown (KeyCode.Alpha1)) {
			//tag = 0;
			//tag = "Santa";
			classID = 1;
		}
		else if (Input.GetKeyDown (KeyCode.Alpha2)) {
			//tag = 1;
			//tag = "Cupid";
			classID = 2;
		}
		else if (Input.GetKeyDown (KeyCode.Alpha3)) {
			//tag = 2;
			//tag = "Easter Bunny";
			classID = 3;
		}
		else if (Input.GetKeyDown (KeyCode.Alpha4)) {
			//tag = 3;
			//tag = "Tooth Fairy";
			classID = 4;
		}
		/*
		//test attack
		if (Input.GetKeyDown (KeyCode.Space)) {
			//health.decreaseHealth(5f);
			//if (tag == "Santa") {
			if (classID == 1) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 50f;
				temp.projectileSpeed = 0.1f;
				temp.maxProjectileLife = 5f;
				temp.knockback = 500f;
				temp.team = team;
				//health.decreaseHealth(50f);
			}
			//else if (tag == "Cupid") {
			else if (classID == 2) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 10f;
				temp.projectileSpeed = 0.15f;
				temp.maxProjectileLife = 50f;
				temp.knockback = 50f;
				temp.team = team;
				//health.decreaseHealth(10f);
			}
			//else if (tag == "Easter Bunny") {
			else if (classID == 3) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 30f;
				temp.projectileSpeed = 0.15f;
				temp.maxProjectileLife = 5f;
				temp.knockback = 200f;
				temp.team = team;
				//health.decreaseHealth(30f);
			}
			//else if (tag == "Tooth Fairy") {
			else if (classID == 4) {
				Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
				temp.transform.position += temp.transform.forward;
				temp.damage = 5f;
				temp.projectileSpeed = 0.25f;
				temp.maxProjectileLife = 100f;
				temp.knockback = 10f;
				temp.team = team;
				//health.decreaseHealth(5f);
			}
		}

		if (Input.GetKeyDown(KeyCode.E)) {
			if (classID == 1) {
				health.decreaseHealth(50f);
			}			
			else if (classID == 2) {
				health.decreaseHealth(10f);
			}			
			else if (classID == 3) {
				health.decreaseHealth(30f);
			}			
			else if (classID == 4) {
				health.decreaseHealth(5f);
			}
		}
		*/
	}

	public void createManager(int joystickNum, OS os)
	{
		inputManager = new InputManager(joystickNum, os);
	}

    public void move()
    {
        float h = inputManager.getAxisX();

        float y = inputManager.getAxisY();


        Vector3 direction = new Vector3(h, 0, -y);

        if (direction != Vector3.zero)
        {
            transform.rotation = Quaternion.LookRotation(direction, Vector3.up);
            transform.position += transform.forward * Vector3.Distance(Vector3.zero, direction) * moveSpeed;
        }
    }
}