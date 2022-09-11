CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJECTS" 
    before insert or update on demo_projects 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJECTS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_COMMENTS" 
    before insert or update on demo_proj_comments 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_COMMENTS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_MILESTONES" 
    before insert or update on demo_proj_milestones 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_MILESTONES" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_STATUS" 
    before insert or update on demo_proj_status 
    for each row 
begin 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.cd         := upper(:new.cd); 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_STATUS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASKS" 
    before insert or update on demo_proj_tasks 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_TASKS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASK_LINKS" 
    before insert or update on demo_proj_task_links 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_TASK_LINKS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TASK_TODOS" 
    before insert or update on demo_proj_task_todos 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_TASK_TODOS" ENABLE
/
CREATE OR REPLACE EDITIONABLE TRIGGER  "BIU_DEMO_PROJ_TEAM_MEMBERS" 
    before insert or update on demo_proj_team_members 
    for each row 
begin 
    if :new.id is null then 
        :new.id := to_number(sys_guid(), 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX'); 
    end if; 
 
    if inserting then 
        :new.created    := localtimestamp; 
        :new.created_by := nvl(wwv_flow.g_user,user); 
    end if; 
    :new.username   := upper(:new.username); 
    :new.updated    := localtimestamp; 
    :new.updated_by := nvl(wwv_flow.g_user,user); 
end; 

/
ALTER TRIGGER  "BIU_DEMO_PROJ_TEAM_MEMBERS" ENABLE
/
