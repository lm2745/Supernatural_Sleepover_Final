using UnityEngine;
using System.Collections;

public class Player : MonoBehaviour {

    InputManager inputManager;//used to get input
    //inputManager.getAxisX(), getAxisY(),
    //             getAction1(), getAction1Down(), getAction1Up()
    //             getAction2(), getAction2Down(), getAction2Up()
    public float moveSpeed;
	/* samir physics movement commit */
	public float maxSpeed = 8f;
	// ******
    //public float health;
	public Health health;

	public int team;
	public int classID; // Santa(1), Cupid(2), Easter Bunny(3), Tooth Fairy(4)
	public Projectile projectilePrefab;

	// attack cooldown, same for all classes (for now)
	float attackCooldown = 1f;
	float timeSinceLastAttack;

    void Start ()
    {
		//createManager(1, OS.WINDOWS);
        //moveSpeed = 0.1f;
	}
	
	void FixedUpdate() {
		//if (inputManager != null) {
		//move();
		moveWithForce();
		timeSinceLastAttack += Time.deltaTime;
		//}
	}

	void Update () {
		if (inputManager.getAction1Down() ) {
			//attack cooldown (temp code assuming cooldown same for all classes)
			if (timeSinceLastAttack >= attackCooldown) {
				//if (tag == "Santa") {
				if (classID == 1) {
					Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
					temp.transform.position += temp.transform.forward/2;
					temp.transform.localScale *= 2;
					temp.damage = 25f;
					temp.projectileSpeed = 0.3f;
					temp.maxProjectileLife = 2f;
					temp.knockback = 350f;
					temp.team = team;
					temp.transform.localScale *= 2;
					temp.GetComponent<Renderer>().material.color = Color.red;
					temp.projectileSpeed += GetComponent<Rigidbody>().velocity.y;

					//health.decreaseHealth(50f);
				}
				//else if (tag == "Cupid") {
				else if (classID == 2) {
					Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
					//temp.transform.position += temp.transform.forward;
					temp.transform.localScale *= 2;

					temp.damage = 10f;
					temp.projectileSpeed = 0.15f;
					temp.maxProjectileLife = 50f;
					temp.knockback = 150f;
					temp.team = team;
					temp.GetComponent<Renderer>().material.color = Color.blue;
					temp.projectileSpeed += GetComponent<Rigidbody>().velocity.y;

					//health.decreaseHealth(10f);
				}
				//else if (tag == "Easter Bunny") {
				else if (classID == 3) {
					Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
					temp.transform.localScale *= 2;

					//temp.transform.position += temp.transform.forward;
					temp.damage = 20f;
					temp.projectileSpeed = 0.3f;
					temp.maxProjectileLife = 2f;
					temp.knockback = 250f;
					temp.team = team;
					temp.transform.localScale *= 2;
					temp.GetComponent<Renderer>().material.color = Color.red;
					temp.projectileSpeed += GetComponent<Rigidbody>().velocity.y;

					//health.decreaseHealth(30f);
				}
				//else if (tag == "Tooth Fairy") {
				else if (classID == 4) {
					Projectile temp = (Projectile) Instantiate(projectilePrefab, transform.position, transform.rotation);
					temp.transform.localScale *= 2;

					temp.transform.position += temp.transform.forward/2;
					temp.damage = 7f;
					temp.projectileSpeed = 0.25f + GetComponent<Rigidbody>().velocity.y;;
					temp.maxProjectileLife = 100f;
					temp.knockback = 100f;
					temp.team = team;
					temp.GetComponent<Renderer>().material.color = Color.blue;

					//health.decreaseHealth(5f);
				}
				// temp code part of equal cooldown assumption
				timeSinceLastAttack = 0f;
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

	public void moveWithForce()
	{
		float h = inputManager.getAxisX();
		
		float y = inputManager.getAxisY();

        Rigidbody rb = GetComponent<Rigidbody>();

        Vector3 direction = new Vector3(h, 0, -y);

        //rb.AddForce(Physics.gravity);
        Vector3 oldYVelocity = new Vector3(0,rb.velocity.y,0);
        rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z); 
        Vector3 newVelocity = Vector3.zero;

        if (direction != Vector3.zero)
		{
			transform.rotation = Quaternion.LookRotation(direction, Vector3.up);
			rb.AddForce(transform.forward * 30) ;

			if(classID == 1)
			{
				 newVelocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed + 1);
			}
			else if( classID == 2)
			{
                newVelocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed + 3);

			}
			else if( classID == 3)
			{
                newVelocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed + 2);
				
			}
			else if( classID == 4)
			{
                newVelocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed + 3);
				
			}
            //transform.position += transform.forward * Vector3.Distance(Vector3.zero, direction) * moveSpeed;
            
        }
        rb.velocity = newVelocity + oldYVelocity;
    }
}
