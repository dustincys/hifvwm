#!/usr/bin/env python3
import argparse
import subprocess
import datetime
import pyowm


def process (args):

    owm = pyowm.OWM(args.api_key[0])
    obs = owm.weather_at_coords(float(args.lat[0]), float(args.lon[0]))

    w = obs.get_weather()
    l = obs.get_location()


    if args.get_weather_icon:
        print(w.get_weather_icon_name()+'.png')
    if args.get_temp_c:
        print(round(w.get_temperature(unit='celsius')['temp']))
    if args.get_status:
        print(w.get_status())
    if args.get_location:
        print(l.get_name())
    if args.get_time:
        rt = w.get_reference_time()
        dt = datetime.datetime.fromtimestamp(rt)
        print(dt.ctime())
    if args.get_forecast:
        pass
        # fc = owm.three_hours_forecast(l.get_name())
        # f = fc.get_forecast()
        # for weather in f:
            # rt = weather.get_reference_time()
            # dt = datetime.datetime.fromtimestamp(rt)
            # print (dt.ctime())
            # print (weather.get_status())

def main():
    parser = argparse.ArgumentParser(description='Openweather script.')
    parser.add_argument('--api_key',help='OWM API key.',nargs=1,metavar=('[api_key]'), required=True)
    parser.add_argument('--get_temp_c',help='Get temperature in Celsius.',action='store_true')
    parser.add_argument('--get_status',help='Get weather short status',action='store_true')
    parser.add_argument('--get_location',help='Get location',action='store_true')
    parser.add_argument('--get_forecast',help='Get forecast',action='store_true')
    parser.add_argument('--get_time',help='Get time',action='store_true')
    parser.add_argument('--get_weather_icon',help='Get weekday.',action='store_true')
    parser.add_argument('--lat', help='Get weather in latitute.', nargs=1, metavar=('[latitute]'), required=True)
    parser.add_argument('--lon', help='Get weather in longitude.', nargs=1, metavar=('[longitude]'), required=True)
    args = parser.parse_args()

    process(args)

if __name__ == "__main__":
    main()
