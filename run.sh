@echo off
cd $(dirname $0)
mkdir imports
ecs -o ./imports/ -c picasso_base.ecs
ecs -o ./imports/ -c picasso_activity.ecs
ecs -o ./imports/ -c picasso_widget.ecs
ecs -o ./imports/ -c picasso_window.ecs
ecs -o ./imports/ -c picasso.ecs
ecs -- "-i ./imports" ./test.ecs




