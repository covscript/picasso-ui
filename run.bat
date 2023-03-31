@echo off
cd %~dp0
mkdir imports
set ECS_FLAGS=-g
call ecs -o .\imports\ %ECS_FLAGS% picasso_base.ecs
call ecs -o .\imports\ %ECS_FLAGS% picasso_activity.ecs
call ecs -o .\imports\ %ECS_FLAGS% picasso_widget.ecs
call ecs -o .\imports\ %ECS_FLAGS% picasso_window.ecs
call ecs -o .\imports\ %ECS_FLAGS% picasso.ecs
call ecs -i .\imports\ %ECS_FLAGS% test.ecs