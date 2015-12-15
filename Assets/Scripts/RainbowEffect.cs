using UnityEngine;
using System.Collections;

public class RainbowEffect : MonoBehaviour {

    public LineRenderer[] ROYGBIV;

    bool isOn = false;
    float time = 0;
    float maxTime = 0;
    Color[] colors;

	// Use this for initialization
	void Start ()
    {
        colors = new Color[] { Color.red, new Color(1, .5f, 0), Color.yellow, Color.green, Color.blue, new Color(.294f, 0, .509f), new Color(.561f, 0, 1) };
	}
	
	// Update is called once per frame
	void Update ()
    {
	    if(isOn && time > 0)
        {
            time -= Time.deltaTime;
            float alpha = time / maxTime;
            for(int color = 0; color < colors.Length; color++)
            {
                colors[color].a = alpha;
                ROYGBIV[color].SetColors(colors[color], colors[color]);
            }

        }
        else if (isOn)
        {
            isOn = false;
            for(int color = 0; color < ROYGBIV.Length; color++)
            {
                ROYGBIV[color].enabled = false;
            }
        }
	}

    public void CreateRainbow(float timeIn, Vector3 start, Vector3 end)
    {
        for (int color = 0; color < ROYGBIV.Length; color++)
        {
            ROYGBIV[color].enabled = true;
            ROYGBIV[color].SetPosition(0, new Vector3(start.x, start.y + (color * -.2f) + .7f, start.z));
            ROYGBIV[color].SetPosition(1, new Vector3(end.x, end.y + (color * -.2f) + .7f, end.z));
            colors[color].a = 1;
            ROYGBIV[color].SetColors(colors[color], colors[color]);
        }
        time = timeIn;
        maxTime = timeIn;
        isOn = true;
    }
}
