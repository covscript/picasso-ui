@echo off
cd %~dp0
call ecs -o .\imports\ -c picasso_base.ecs
call ecs -o .\imports\ -c picasso_activity.ecs
call ecs -o .\imports\ -c picasso_widget.ecs
call ecs -o .\imports\ -c picasso.ecs
call ecs -- "-i .\imports" .\test.ecs