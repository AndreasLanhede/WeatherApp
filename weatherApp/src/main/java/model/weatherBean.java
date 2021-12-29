package model;

import java.time.Instant;



public class weatherBean {

	private String cityStr;

	private String countryStr;

	private String temperatureStr;
	
	private String timeStr;
	



	//Har inte setters f�r City och Land. Ist�llet s� l�gger vi dem i Constructor
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
		//h�mtar currenttime i ms och /1000 f�r f� tid i sekunder
		long unixTime = System.currentTimeMillis()/1000;
		
		//l�gger till timestr vilket �r tidszon i sekunder till unixtime och g�r om till normal tidsangivelse med Instant
		Instant localtime = Instant.ofEpochSecond(unixTime+Integer.parseInt(timeStr));
		
		this.timeStr = String.valueOf(localtime);
	}
	
	
	
	
}
		