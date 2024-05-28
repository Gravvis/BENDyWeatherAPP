import "http.client" as HttpClient

struct WeatherResponse {
    temp: Float64,
    condition: String,
    // Define other fields as per the API response
}

fn fetchWeatherData(lat: Float64, lon: Float64) -> WeatherResponse {
    let url = "https://api.weather.example.com/data?lat=" + lat.to_string() + "&lon=" + lon.to_string()
    let client = HttpClient.new()
    let response = client.get(url)
    
    // Robust error handling
    if response.status!= 200 {
        throw Exception("Failed to fetch weather data. Status code: " + response.status.to_string())
    }
    
    // Parse and return the weather data
    // Note: Simplified for brevity; actual parsing logic depends on API response structure
}

fn processWeatherData(lat: Float64, lon: Float64) -> WeatherDisplay {
    let weatherData = fetchWeatherData(lat, lon)
    WeatherDisplay{temp: weatherData.temp, condition: weatherData.condition}
}
