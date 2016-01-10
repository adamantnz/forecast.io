class WeatherController < ApplicationController
  require 'forecast_io'

  LAT = 51.5072
  LONG = -0.1275

  def index
    @summary = weatherReport.currently.summary.to_s
    @icon = weatherReport.currently.icon
    @windSpeed = weatherReport.currently.windSpeed
    @temperature = weatherReport.currently.temperature
    @timezone = weatherReport.timezone
    @latitude = params[:latitude]
    @longitude = params[:longitude]
  end

private
  ForecastIO.configure do |configuration|
    configuration.api_key = 'cb8d188f804b45dd312b782952017060'
  end

  def weatherReport
    ForecastIO.forecast(LAT, LONG, params:{units:'si'})
  end
end
