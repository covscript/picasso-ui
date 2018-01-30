import picasso
import darwin
function main()
    var act=new picasso.activity
    var x=0
    var y=0
    var pix=darwin.pixel('@',darwin.white,darwin.black)
    function on_keydown(key)
        switch char.tolower(key)
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
    act.on_keydown.add_listener(on_keydown)
    act.on_draw.add_listener(on_draw)
    act.start()
end
picasso.start(main)