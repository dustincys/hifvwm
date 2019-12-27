--[[
Clock Rings by Linux Mint (2011) reEdited by despot77

This script draws percentage meters as rings, and also draws clock hands if you want! It is fully customisable; all options are described in the script. This script is based off a combination of my clock.lua script and my rings.lua script.

IMPORTANT: if you are using the 'cpu' function, it will cause a segmentation fault if it tries to draw a ring straight away. The if statement on line 145 uses a delay to make sure that this doesn't happen. It calculates the length of the delay by the number of updates since Conky started. Generally, a value of 5s is long enough, so if you update Conky every 1s, use update_num>5 in that if statement (the default). If you only update Conky every 2s, you should change it to update_num>3; conversely if you update Conky every 0.5s, you should use update_num>10. ALSO, if you change your Conky, is it best to use "killall conky; conky" to update it, otherwise the update_num will not be reset and you will get an error.

To call this script in Conky, use the following (assuming that you save this script to ~/scripts/rings.lua):
    lua_load ~/scripts/clock_rings.lua
    lua_draw_hook_pre clock_rings

Changelog:
+ v1.0 -- Original release (30.09.2009)
   v1.1p -- Jpope edit londonali1010 (05.10.2009)
*v Mint-lua -- reEdit despot77 (18.02.2011)
]]

settings_table = {
    --{
        ---- Edit this table to customise your rings.
        ---- You can create more rings simply by adding more elements to settings_table.
        ---- "name" is the type of stat to display; you can choose from 'cpu', 'memperc', 'fs_used_perc', 'battery_used_perc'.
        --name='time',
        ---- "arg" is the argument to the stat type, e.g. if in Conky you would write ${cpu cpu0}, 'cpu0' would be the argument. If you would not use an argument in the Conky variable, use ''.
        --arg='%I.%M',
        ---- "max" is the maximum value of the ring. If the Conky variable outputs a percentage, use 100.
        --max=12,
        ---- "bg_colour" is the colour of the base ring.
        --bg_colour=0xffffff,
        ---- "bg_alpha" is the alpha value of the base ring.
        --bg_alpha=0.5,
        ---- "fg_colour" is the colour of the indicator part of the ring.
        --fg_colour=0x00BFC4,
        ---- "fg_alpha" is the alpha value of the indicator part of the ring.
        --fg_alpha=0.9,
        ---- "x" and "y" are the x and y coordinates of the centre of the ring, relative to the top left corner of the Conky window.
        --x=120, y=120,
        ---- "radius" is the radius of the ring.
        --radius=100,
        ---- "thickness" is the thickness of the ring, centred around the radius.
        --thickness=5,
        ---- "start_angle" is the starting angle of the ring, in degrees, clockwise from top. Value can be either positive or negative.
        --start_angle=0,
        ---- "end_angle" is the ending angle of the ring, in degrees, clockwise from top. Value can be either positive or negative, but must be larger than start_angle.
        --end_angle=360
    --},
    {
        name='time',
        arg='%H',
        max=24,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x00BFC4,
        fg_alpha=0.9,
        x=120, y=120,
        radius=70,
        thickness=5,
        start_angle=0,
        end_angle=360
    },
    {
        name='time',
        arg='%H',
        max=12,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x00BFC4,
        fg_alpha=0.9,
        x=120, y=120,
        radius=80,
        thickness=5,
        start_angle=0,
        end_angle=360
    },
    {
        name='time',
        arg='%M',
        max=60,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0xF8766D,
        fg_alpha=0.9,
        x=120, y=120,
        radius=90,
        thickness=5,
        start_angle=0,
        end_angle=360
    },
    {
        name='time',
        arg='%S',
        max=60,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x7CAE00,
        fg_alpha=0.9,
        x=120, y=120,
        radius=100,
        thickness=5,
        start_angle=0,
        end_angle=360
    },
    {
        name='time',
        arg='%w',
        max=6,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x7CAE00,
        fg_alpha=0.5,
        x=120, y=120,
        radius=110,
        thickness=5,
        start_angle=0,
        end_angle=270
	},
    {
        name='time',
        arg='%d',
        max=31,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x7CAE00,
        fg_alpha=0.5,
        x=120, y=120,
        radius=120,
        thickness=5,
        start_angle=45,
        end_angle=180
    },
    {
        name='time',
        arg='%m',
        max=12,
        bg_colour=0xffffff,
        bg_alpha=0.5,
        fg_colour=0x7CAE00,
        fg_alpha=0.5,
        x=120, y=120,
        radius=130,
        thickness=5,
        start_angle=45,
        end_angle=180
    },
}


--settings_table_back = {
    --{
        --name='background',
        --max=12,
        --bg_colour=0xffffff,
        --bg_alpha=0.1,
        --fg_colour=0x7CAE00,
        --fg_alpha=1,
        --x=120, y=120,
        --radius=260,
        --thickness=1,
        --start_angle=80,
        --end_angle=180
    --},
    --{
        --name='background2',
        --max=12,
        --bg_colour=0xffffff,
        --bg_alpha=0.1,
        --fg_colour=0x7CAE00,
        --fg_alpha=1,
        --x=120, y=-100,
        --radius=480,
        --thickness=2,
        --start_angle=140,
        --end_angle=180
    --},
    --{
        --name='background2',
        --max=12,
        --bg_colour=0xffffff,
        --bg_alpha=0.1,
        --fg_colour=0x7CAE00,
        --fg_alpha=1,
        --x=120, y=-600,
        --radius=980,
        --thickness=3,
        --start_angle=170,
        --end_angle=180
    --},
    --{
        --name='background2',
        --max=12,
        --bg_colour=0xffffff,
        --bg_alpha=0.1,
        --fg_colour=0x7CAE00,
        --fg_alpha=1,
        --x=120, y=0,
        --radius=380,
        --thickness=2,
        --start_angle=120,
        --end_angle=180
    --},
    --{
        --name='background2',
        --max=12,
        --bg_colour=0xffffff,
        --bg_alpha=0.1,
        --fg_colour=0x7CAE00,
        --fg_alpha=1,
        --x=120, y=220,
        --radius=160,
        --thickness=2,
        --start_angle=100,
        --end_angle=180
    --},
--}

-- Use these settings to define the origin and extent of your clock.

clock_r=100

-- "clock_x" and "clock_y" are the coordinates of the centre of the clock, in pixels, from the top left of the Conky window.

clock_x=120
clock_y=120
show_seconds=true

require 'cairo'

function rgb_to_r_g_b(colour,alpha)
    return ((colour / 0x10000) % 0x100) / 255., ((colour / 0x100) % 0x100) / 255., (colour % 0x100) / 255., alpha
end

function draw_ring(cr,t,pt)
    local w,h=conky_window.width,conky_window.height

    local xc,yc,ring_r,ring_w,sa,ea=pt['x'],pt['y'],pt['radius'],pt['thickness'],pt['start_angle'],pt['end_angle']
    local bgc, bga, fgc, fga=pt['bg_colour'], pt['bg_alpha'], pt['fg_colour'], pt['fg_alpha']

    local angle_0=sa*(2*math.pi/360)-math.pi/2
    local angle_f=ea*(2*math.pi/360)-math.pi/2
    local t_arc=t*(angle_f-angle_0)

    -- Draw background ring

    cairo_arc(cr,xc,yc,ring_r,angle_0,angle_f)
    cairo_set_source_rgba(cr,rgb_to_r_g_b(bgc,bga))
    cairo_set_line_width(cr,ring_w)
    cairo_stroke(cr)

    -- Draw indicator ring

    cairo_arc(cr,xc,yc,ring_r,angle_0,angle_0+t_arc)
    cairo_set_source_rgba(cr,rgb_to_r_g_b(fgc,fga))
    cairo_stroke(cr)
end

function draw_clock_hands(cr,xc,yc)
    local secs,mins,hours,secs_arc,mins_arc,hours_arc
    local xh,yh,xm,ym,xs,ys,hourr

    secs=os.date("%S")
    mins=os.date("%M")
    hours=os.date("%H")

    secs_arc=(2*math.pi/60)*secs
    mins_arc=(2*math.pi/60)*mins+secs_arc/60
    hours_arc=(2*math.pi/12)*hours+mins_arc/12

    -- Draw hour hand

    hourr=0.7-0.12*math.floor(hours/12)

    xh=xc+hourr*clock_r*math.sin(hours_arc)
    yh=yc-hourr*clock_r*math.cos(hours_arc)
    cairo_move_to(cr,xc,yc)
    cairo_line_to(cr,xh,yh)

    cairo_set_line_cap(cr,CAIRO_LINE_CAP_ROUND)
    cairo_set_line_width(cr,25)
    cairo_set_source_rgba(cr,0,0.7490196,0.7686275,0.8)
    cairo_stroke(cr)

    -- Draw minute hand

    xm=xc+0.8*clock_r*math.sin(mins_arc)
    ym=yc-0.8*clock_r*math.cos(mins_arc)
    cairo_move_to(cr,xc,yc)
    cairo_line_to(cr,xm,ym)

    cairo_set_line_width(cr,20)
    cairo_set_source_rgba(cr,1.0122449,0.4816327,0.4448980,0.8)
    cairo_stroke(cr)

    -- Draw seconds hand

    if show_seconds then
        xs=xc+0.95*clock_r*math.sin(secs_arc)
        ys=yc-0.95*clock_r*math.cos(secs_arc)
        cairo_move_to(cr,xc,yc)
        cairo_line_to(cr,xs,ys)

        cairo_set_source_rgba(cr, 0.4862745,0.6823529,0.0000000,0.8)
        cairo_set_line_width(cr,10)
        cairo_stroke(cr)
    end
end

function conky_clock_rings()
    local function setup_rings(cr,pt)
        local str=''
        local value=0
        local str2=''
        local value2=0
        local str3=''
        local value3=0

        str=string.format('${%s %s}',pt['name'],pt['arg'])
        str=conky_parse(str)
        value=tonumber(str)

        if pt['arg']=='%H' then
            str2=string.format('${%s %s}', 'time', '%M')
            str2=conky_parse(str2)
            value2=tonumber(str2)
            value = value + (value2/60.0)
        elseif pt['arg']=='%M' then
            str3=string.format('${%s %s}', 'time', '%S')
            str3=conky_parse(str3)
            value3=tonumber(str3)
            value = value + (value3/60.0)
        end

        if pt['arg']=='%H' and pt['max']==24 then
            pct= (value - 12) / 12
        else
            pct=value/pt['max']
        end

        if pct > 1 then
            pct = 1
        elseif pct < 0 then
            pct = 0
        end

        draw_ring(cr,pct,pt)
    end

    -- Check that Conky has been running for at least 5s

    if conky_window==nil then return end
    local cs=cairo_xlib_surface_create(conky_window.display,conky_window.drawable,conky_window.visual, conky_window.width,conky_window.height)

    local cr=cairo_create(cs)

    local updates=conky_parse('${updates}')
    update_num=tonumber(updates)

    if update_num>5 then
        for i in pairs(settings_table) do
            setup_rings(cr,settings_table[i])
        end
    end

	--for i in pairs(settings_table_back) do
	    --draw_ring(cr,1,settings_table_back[i])
        --end
    draw_clock_hands(cr,clock_x,clock_y)

    cairo_surface_destroy(cs)
    cairo_destroy(cr)
end
