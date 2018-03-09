import picasso
struct main_activity extends picasso.base_activity
    var id=0
    function initialize() override
        this.title="Test"
        this.enable_menu=true
    end
    function on_menu_present() override
        if picasso.menu_item("New window","",true)
            var win=gcnew picasso.message_box
            win->title="Message##"+(id++)
            win->message="Hello,world!"
            win->show()
            this.add_window(win)
        end
    end
end
var act=new main_activity
act.start()