package model;

import java.time.Instant;



public class weatherBean {

	private String cityStr;

	private String countryStr;

	private String temperatureStr;
	
	private String timeStr;
	



	//Har inte setters för City och Land. Istället så lägger vi dem i Constructor
	public weatherBean(String cityStr, String countryStr) {

		this.cityStr = cityStr;
		this.countryStr = countryStr;

	}

	public String getCityStr() {
		return cityStr;
	}

	public String getCountryStr() {
		return countryStr;
	}

	public String getTemperatureStr() {
		return temperatureStr;
	}

	public void setTemperatureStr(String temperatureStr) {
		this.temperatureStr = (temperatureStr);
	}
	
	public String getTimeStr() {
		return timeStr;
	}

	public void setTimeStr(String timeStr) {
		//hämtar currenttime i ms och /1000 för få tid i sekunder
		long unixTime = System.currentTimeMillis()/1000;
		
		//lägger till timestr vilket är tidszon i sekunder till unixtime och gör om till normal tidsangivelse med Instant
		Instant localtime = Instant.ofEpochSecond(unixTime+Integer.parseInt(timeStr));
		
		this.timeStr = String.valueOf(localtime);
	}
	
	
	
	
}
		