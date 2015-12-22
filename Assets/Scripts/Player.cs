using UnityEngine;
using UnityEngine.UI;
using System.Collections;

public class Player : MonoBehaviour {

    InputManager inputManager;//used to get input
	Animator anim;
	int attackHash = Animator.StringToHash("Attack");
	int walkingHash = Animator.StringToHash("Walking");
    //inputManager.getAxisX(), getAxisY(),
    //             getAction1(), getAction1Down(), getAction1Up()
    //             getAction2(), getAction2Down(), getAction2Up()
    public float moveSpeed;
	/* samir physics movement commit */
	public float maxSpeed = 8f;
	// ******
    //public float health;
	public Health health;
    public Health specialMeter;

	public int team;
	public int classID; // Santa(1), Cupid(2), Easter Bunny(3), Tooth Fairy(4)
	public Projectile projectilePrefab;
	public AudioSource hitSound;
    public AudioSource deathSound;


	
	public float attackCooldown = 1f;
	float timeSinceLastAttack;

    bool canUseSpecial = false;
    public RainbowEffect rainbowEffect;
    Color specialNotFull = new Color(235f / 255f, 238f / 255f, 0);
    Color specialFull = new Color(238f / 255f, 84f / 255f, 0);

    void Start ()
    {
        //createManager(1, OS.WINDOWS);
        //moveSpeed = 0.1f;
        specialMeter.setMeterValue(0f);
		anim = GetComponentInChildren<Animator>();
		//anim.SetBool(walkingHash, true);
	}
	
	void FixedUpdate() {
        //if (inputManager != null) {
        //move();
		//if (anim.GetBool(walkingHash) == true) {
		//	anim.SetBool(walkingHash, false);
		//}
        moveWithForce();
        
		timeSinceLastAttack += Time.deltaTime;
		//}
	}

	void Update ()
    {

        UpdateProjectiles();
        UpdateSpecialMeter();

        
	}

    void UpdateSpecialMeter()
    {
        //Add meter if you're waiting for it to reload
        if (!canUseSpecial)
        {
            specialMeter.addSpecialMeter(.1f);
            if (specialMeter.curHealth >= 100)
            {
                canUseSpecial = true;
                specialMeter.curHealth = 100;
                specialMeter.GetComponentInChildren<Image>().color = specialFull;
            }
        }

        //If you're not using your special and your meter isn't full
        //Then you can't use your special
        if(canUseSpecial && !inputManager.getAction2() && specialMeter.curHealth < 100f)
        {
            canUseSpecial = false;
            specialMeter.GetComponentInChildren<Image>().color = specialNotFull;
        }
        else if (specialMeter.curHealth <= 0f)
        {
            canUseSpecial = false;
            specialMeter.GetComponentInChildren<Image>().color = specialNotFull;
        }

        //Santa special
        if (canUseSpecial && inputManager.getAction2() && classID == 1)
        {
            GetComponent<Rigidbody>().mass = .9f;
            maxSpeed = 16f;
            specialMeter.decreaseHealth(.6f);
        }
        else if (classID == 1)
        {
            GetComponent<Rigidbody>().mass = .45f;
            maxSpeed = 8f;
        }
        //Easter Bunny special
        if (canUseSpecial && inputManager.getAction2Down() && classID == 2)
        {
            EasterBunnyHop();
        }
        //Cupid Special
        if (canUseSpecial && inputManager.getAction2() && classID == 3)
        {
            CupidFlight();
        }
        //Tooth Fairy Special
        if (canUseSpecial && inputManager.getAction2() && classID == 4)
        {
            ToothFairyInvisibility();
        }
        else if (classID == 4)
        {
            MeshRenderer[] renderers = GetComponentsInChildren<MeshRenderer>();
            SkinnedMeshRenderer[] skinRenderers = GetComponentsInChildren<SkinnedMeshRenderer>();
            foreach (MeshRenderer rend in renderers)
            {
                rend.enabled = true;
            }
            foreach (SkinnedMeshRenderer rend in skinRenderers)
            {
                rend.enabled = true;
            }
        }

    }

    void UpdateProjectiles()
    {
        if (inputManager.getAction1Down())
        {
            //attack cooldown (temp code assuming cooldown same for all classes)
            if (timeSinceLastAttack >= attackCooldown)
            {
                //if (tag == "Santa") {
                if (classID == 1)
                {
                    Projectile temp = (Projectile)Instantiate(projectilePrefab, transform.position, transform.rotation);
                    temp.transform.position += temp.transform.forward / 2;
                    temp.damage = 25f;
                    temp.projectileSpeed = 0.18f;
                    temp.maxProjectileLife = 13f;
                    temp.knockback = 350f;
                    temp.team = team;
                    temp.transform.localScale *= 4.5f;
					//temp.GetComponent<Renderer>().enabled = false;
                    temp.GetComponent<Renderer>().material.color = Color.red;
					temp.hitSound = hitSound;
                    temp.deathSound = deathSound;
                    anim.SetTrigger(attackHash);
                    temp.classID = classID;

                    //health.decreaseHealth(50f);
                }
                //else if (tag == "Easter Bunny") {
                else if (classID == 2)
                {
                    Projectile temp = (Projectile)Instantiate(projectilePrefab, transform.position, transform.rotation);

                    //temp.transform.position += temp.transform.forward;
                    temp.damage = 20f;
                    temp.projectileSpeed = 0.18f;
                    temp.maxProjectileLife = 12f;
                    temp.knockback = 250f;
                    temp.team = team;
                    temp.transform.localScale *= 2;
					temp.GetComponent<Renderer>().enabled = false;
                    temp.GetComponent<Renderer>().material.color = Color.yellow;
					temp.hitSound = hitSound;
                    temp.deathSound = deathSound;
                    temp.classID = classID;
                    anim.SetTrigger(attackHash);
                    //health.decreaseHealth(30f);
                }
                //else if (tag == "Cupid") {
                else if (classID == 3)
                {
                    Projectile temp = (Projectile)Instantiate(projectilePrefab, transform.position, transform.rotation);
                    //temp.transform.position += temp.transform.forward;
                    temp.transform.localScale *= 2;

                    temp.damage = 15f;
                    temp.projectileSpeed = 0.17f;
                    temp.maxProjectileLife = 35f;
                    temp.knockback = 150f;
                    temp.team = team;
                    temp.transform.localScale *= .8f;
                    temp.GetComponent<Renderer>().material.color = Color.red;
					temp.hitSound = hitSound;
                    temp.deathSound = deathSound;
                    anim.SetTrigger(attackHash);
                    //health.decreaseHealth(10f);
                    temp.classID = classID;
                }
                //else if (tag == "Tooth Fairy") {
                else if (classID == 4)
                {
                    Projectile temp = (Projectile)Instantiate(projectilePrefab, transform.position, transform.rotation);
                    temp.transform.localScale *= 2;

                    temp.transform.position += temp.transform.forward / 2;
                    temp.damage = 10f;
                    temp.projectileSpeed = 0.25f;
                    temp.maxProjectileLife = 100f;
                    temp.knockback = 100f;
                    temp.team = team;
                    temp.GetComponent<Renderer>().material.color = Color.yellow;
					temp.hitSound = hitSound;
                    temp.deathSound = deathSound;
                    anim.SetTrigger(attackHash);
                    //health.decreaseHealth(5f);
                    temp.classID = classID;
                }
                
                // temp code part of equal cooldown assumption
                timeSinceLastAttack = 0f;
            }
        }
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

		if (classID == 1 && direction == Vector3.zero) {
			if (anim.GetBool(walkingHash) == true) {
				//Debug.Log("set to idle");
				anim.SetBool(walkingHash, false);
			}
		}
		
        if (direction != Vector3.zero)
		{
			if (classID == 1 ) {
				if (anim.GetBool(walkingHash) == false) {
					//Debug.Log("set to walking");
					anim.SetBool(walkingHash, true);
				}
			}

			transform.rotation = Quaternion.LookRotation(direction, Vector3.up);
			rb.AddForce(transform.forward * 30) ;

			if(classID == 1)
			{
				 newVelocity = Vector3.ClampMagnitude(rb.velocity, maxSpeed);
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

    //Has a higher max speed but accelerates with less force
   

    public void EasterBunnyHop()
    {
        Vector3 startPosition = transform.position;
        transform.position = new Vector3(transform.position.x,
                                            transform.position.y + 6f,
                                            transform.position.z);
        
        Ray bunnyRay = new Ray(transform.position, transform.forward);
        RaycastHit bunnyRayInfo;
        if(Physics.Raycast(bunnyRay, out bunnyRayInfo, 500f))
        {
            if(bunnyRayInfo.collider.tag == "Obstacle")
            {
                transform.position = bunnyRayInfo.point + bunnyRayInfo.normal;
            }
        }

        rainbowEffect.CreateRainbow(2f, startPosition, transform.position);
        specialMeter.setMeterValue(0f);
    }

    public void ToothFairyInvisibility()
    {
        MeshRenderer[] renderers = GetComponentsInChildren<MeshRenderer>();
        SkinnedMeshRenderer[] skinRenderers = GetComponentsInChildren<SkinnedMeshRenderer>();
        foreach (MeshRenderer rend in renderers)
        {
            rend.enabled = false;
        }
        foreach (SkinnedMeshRenderer rend in skinRenderers)
        {
            rend.enabled = false;
        }
        specialMeter.decreaseHealth(.8f);
    }

    public void CupidFlight()
    {
        transform.position = new Vector3(transform.position.x, Mathf.Clamp(transform.position.y + .4f, 0f, 5.5f), transform.position.z);
        specialMeter.decreaseHealth(.7f);
        Rigidbody rb = GetComponent<Rigidbody>();
        rb.velocity = new Vector3(rb.velocity.x, 0, rb.velocity.z);
    }
}
