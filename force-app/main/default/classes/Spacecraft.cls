public class Spacecraft {
    public String model;
    public String manufacturer;
    public Integer crewSize;
    public Boolean isLaunched;

    public Spacecraft(String model, String manufacturer, Integer crewSize) {
        this.model = model;
        this.manufacturer = manufacturer;
        this.crewSize = crewSize;
        this.isLaunched = false;
    }

    public void toggleLaunchStatus() {
        this.isLaunched = !this.isLaunched;
    }
}
