import "ui.bend" as UI
import "utils.bend" as Utils

fn main() {
    // Initialize UI
    UI.init()

    // Set up event listener for location change
    UI.onLocationChange(Utils.fetchWeatherData)

    // Start the application loop
    UI.run()
}
