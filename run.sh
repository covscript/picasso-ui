#!/bin/bash
cd $(dirname $0)
mkdir imports
ECS_FLAGS=-g
ecs -o ./imports/ $ECS_FLAGS picasso_base.ecs
ecs -o ./imports/ $ECS_FLAGS picasso_activity.ecs
ecs -o ./imports/ $ECS_FLAGS picasso_widget.ecs
ecs -o ./imports/ $ECS_FLAGS picasso_window.ecs
ecs -o ./imports/ $ECS_FLAGS picasso.ecs
ecs -i ./imports/ $ECS_FLAGS test.ecs