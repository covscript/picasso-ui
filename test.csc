import picasso
struct main_activity
    var x=0
    var y=0
    var pix=picasso.darwin.pixel('@',picasso.darwin.white,picasso.darwin.black)
    function on_keydown(key)
        switch key.tolower()
            case 'w'
                --y
            end
            case 's'
                ++y
            end
            case 'a'
                --x
            end
            case 'd'
                ++x
            end
            case 'q'
                picasso.event.message_queue.push(picasso.event.message.exit)
            end
        end
        return true
    end
    function on_draw(pic)
        pic.clear()
        pic.draw_pixel(x,y,pix)
        return true
    end
    function start()
        var act=new picasso.activity
        act.on_keydown.add_listener(on_keydown)
        act.on_draw.add_listener(on_draw)
        act.start()
    end
end
picasso.start((new main_activity).start)